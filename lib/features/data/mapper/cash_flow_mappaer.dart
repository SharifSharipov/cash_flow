import 'package:cash_flow/features/data/models/transaction_model/transaction_model.dart';
import 'package:cash_flow/features/domain/entitiy/transaction_entity.dart';

class CashFlowMappaer {
  static CashFlowMappaer instance = CashFlowMappaer._init();
  CashFlowMappaer._init();

  static TransactionEntity toTransactionEntity(TransactionModel model) =>
      TransactionEntity(
        id: model.id,
        type: model.type,
        category: model.category,
        amount: model.amount,
        date: model.date,
        income: model.isIncome,
        note: model.note,
      );

  static TransactionModel toTransactionModel(TransactionEntity entity) =>
      TransactionModel(
        id: entity.id,
        type: entity.type,
        category: entity.category,
        amount: entity.amount,
        date: entity.date,
        isIncome: entity.income,
        note: entity.note,
      );
}
