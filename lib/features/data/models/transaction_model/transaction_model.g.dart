// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionModelImpl _$$TransactionModelImplFromJson(
  Map<String, dynamic> json,
) => _$TransactionModelImpl(
  id: (json['id'] as num?)?.toInt(),
  type: json['type'] as String,
  category: json['category'] as String,
  amount: (json['amount'] as num).toDouble(),
  date: DateTime.parse(json['date'] as String),
  isIncome: (json['isIncome'] as num).toInt(),
  note: json['note'] as String?,
);

Map<String, dynamic> _$$TransactionModelImplToJson(
  _$TransactionModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'category': instance.category,
  'amount': instance.amount,
  'date': instance.date.toIso8601String(),
  'isIncome': instance.isIncome,
  'note': instance.note,
};
