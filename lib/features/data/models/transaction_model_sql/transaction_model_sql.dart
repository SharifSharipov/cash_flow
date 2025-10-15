sealed class TransactionSQL {
  TransactionSQL._();

  static const tableName = 'transactions';
  static const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
  static const textType = 'TEXT NOT NULL';
  static const realType = 'REAL NOT NULL';
  static const dateType = 'TEXT NOT NULL';

  static const id = 'id';
  static const type = 'type';
  static const category = 'category';
  static const amount = 'amount';
  static const date = 'date';
  static const note = 'note';
  static const isIncome = 'isIncome'; 
}
