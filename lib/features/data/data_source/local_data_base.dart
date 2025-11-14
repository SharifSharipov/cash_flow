import 'dart:developer';
import 'package:cash_flow/features/data/models/transaction_model/transaction_model.dart';
import 'package:cash_flow/features/data/models/transaction_model_sql/transaction_model_sql.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


class LocalDatabase {
  LocalDatabase._();
  static final LocalDatabase instance = LocalDatabase._();

  static Database? _database;

  Future<void> warmUp() async => await _init();

  Future<Database> _init() async {
    if (_database != null) return _database!;
    return _database = await _initDB('fintrack.db');
  }

  Future<Database> _initDB(String dbName) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, dbName);
    return await openDatabase(path,
        version: 2, onCreate: _onCreate, onUpgrade: _onUpgrade);
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE ${TransactionSQL.tableName} (
        ${TransactionSQL.id} ${TransactionSQL.idType},
        ${TransactionSQL.type} ${TransactionSQL.textType},
        ${TransactionSQL.category} ${TransactionSQL.textType},
        ${TransactionSQL.amount} ${TransactionSQL.realType},
        ${TransactionSQL.date} ${TransactionSQL.dateType},
        ${TransactionSQL.note} TEXT,
        ${TransactionSQL.isIncome} INTEGER NOT NULL
      )
    ''');
  }

  Future<void> _onUpgrade(Database db, int oldVersion, int newVersion) async {
    if (oldVersion < 2) {
      await db.execute(
          'ALTER TABLE ${TransactionSQL.tableName} ADD COLUMN ${TransactionSQL.isIncome} INTEGER NOT NULL DEFAULT 1;');
    }
  }

  Future<int> insertTransaction(TransactionModel model) async {
    final db = await _init();
    log('Insert: ${model.toJson()}');
    return await db.insert(
      TransactionSQL.tableName,
      model.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<TransactionModel>> getAllTransactions() async {
    final db = await _init();
    final result = await db.query(
      TransactionSQL.tableName,
      orderBy: '${TransactionSQL.date} DESC',
    );
    return result.map((e) => TransactionModel.fromJson(e)).toList();
  }

  Future<List<TransactionModel>> getByType(String type) async {
    final db = await _init();
    final result = await db.query(
      TransactionSQL.tableName,
      where: '${TransactionSQL.type} = ?',
      whereArgs: [type],
    );
    return result.map((e) => TransactionModel.fromJson(e)).toList();
  }

  Future<int> updateTransaction({
    required int id,
    required TransactionModel model,
  }) async {
    final db = await _init();
    return await db.update(
      TransactionSQL.tableName,
      model.toJson(),
      where: '${TransactionSQL.id} = ?',
      whereArgs: [id],
    );
  }

  Future<int> deleteTransaction(int id) async {
    final db = await _init();
    return await db.delete(
      TransactionSQL.tableName,
      where: '${TransactionSQL.id} = ?',
      whereArgs: [id],
    );
  }

  Future<void> clearAll() async {
    final db = await _init();
    await db.delete(TransactionSQL.tableName);
  }

  Future<void> close() async {
    final db = _database;
    if (db != null && db.isOpen) {
      await db.close();
      _database = null;
    }
  }

  Future<double> getTotalIncome() async {
    final db = await _init();
    final result = await db.rawQuery('''
      SELECT SUM(${TransactionSQL.amount}) as total 
      FROM ${TransactionSQL.tableName}
      WHERE ${TransactionSQL.isIncome} = 1
    ''');
    return (result.first['total'] as num?)?.toDouble() ?? 0.0;
  }

  Future<double> getTotalExpense() async {
    final db = await _init();
    final result = await db.rawQuery('''
      SELECT SUM(${TransactionSQL.amount}) as total 
      FROM ${TransactionSQL.tableName}
      WHERE ${TransactionSQL.isIncome} = 0
    ''');
    return (result.first['total'] as num?)?.toDouble() ?? 0.0;
  }

  Future<double> getBalance() async {
    final income = await getTotalIncome();
    final expense = await getTotalExpense();
    return income - expense;
  }

  Future<Map<String, double>> getMonthlyAnalytics(DateTime month) async {
    final db = await _init();

    final start = DateTime(month.year, month.month, 1).toIso8601String();
    final end =
        DateTime(month.year, month.month + 1, 1).toIso8601String();

    final incomeResult = await db.rawQuery('''
      SELECT SUM(${TransactionSQL.amount}) as total
      FROM ${TransactionSQL.tableName}
      WHERE ${TransactionSQL.isIncome} = 1 AND ${TransactionSQL.date} >= ? AND ${TransactionSQL.date} < ?
    ''', [start, end]);

    final expenseResult = await db.rawQuery('''
      SELECT SUM(${TransactionSQL.amount}) as total
      FROM ${TransactionSQL.tableName}
      WHERE ${TransactionSQL.isIncome} = 0 AND ${TransactionSQL.date} >= ? AND ${TransactionSQL.date} < ?
    ''', [start, end]);

    final income = (incomeResult.first['total'] as num?)?.toDouble() ?? 0.0;
    final expense = (expenseResult.first['total'] as num?)?.toDouble() ?? 0.0;

    return {
      'income': income,
      'expense': expense,
      'balance': income - expense,
    };
  }

  Future<Map<String, double>> getExpensesByCategory() async {
    final db = await _init();
    final result = await db.rawQuery('''
      SELECT ${TransactionSQL.category}, SUM(${TransactionSQL.amount}) as total
      FROM ${TransactionSQL.tableName}
      WHERE ${TransactionSQL.isIncome} = 0
      GROUP BY ${TransactionSQL.category}
    ''');

    final Map<String, double> categoryExpenses = {};
    for (var row in result) {
      final category = row['category'] as String;
      final total = (row['total'] as num?)?.toDouble() ?? 0.0;
      if (total > 0) {
        categoryExpenses[category] = total;
      }
    }
    return categoryExpenses;
  }
}
