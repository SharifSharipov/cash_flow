import 'package:equatable/equatable.dart';

class TransactionChange extends Equatable {
  final int id;
  final String title;
  final String category;

  const TransactionChange({
    required this.id,
    required this.title,
    required this.category,
  });

  @override
  List<Object?> get props => [id, title, category];
}
