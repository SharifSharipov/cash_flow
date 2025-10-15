import 'package:equatable/equatable.dart';

class TransactionEntity extends Equatable {
  final int? id;
  final String type;
  final String category;
  final double amount;
  final DateTime date;
  final int income;
  final String? note;
  const TransactionEntity({
    this.id,
    required this.type,
    required this.category,
    required this.amount,
    required this.date,
    required this.income,
    this.note,
  });

  @override
  List<Object?> get props => [id, type, category, amount, date, income, note];
}
