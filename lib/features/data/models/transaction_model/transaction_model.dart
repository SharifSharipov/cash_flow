import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';
@freezed
class TransactionModel with _$TransactionModel{
   const factory  TransactionModel({
    int? id,
    required String type,
    required String category,
    required double amount,
    required DateTime date,
    required int isIncome,
    String? note,
   })=_TransactionModel;

    factory TransactionModel.fromJson(Map<String, dynamic> json) =>
        _$TransactionModelFromJson(json);
}