// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'msg_undelegate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MsgUndelegate _$MsgUndelegateFromJson(Map<String, dynamic> json) {
  return MsgUndelegate(
    delegatorAddress: json['delegator_address'] as String,
    validatorAddress: json['validator_address'] as String,
    amount: json['amount'] == null
        ? null
        : Coin.fromJson(json['amount'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MsgUndelegateToJson(MsgUndelegate instance) =>
    <String, dynamic>{
      'delegator_address': instance.delegatorAddress,
      'validator_address': instance.validatorAddress,
      'amount': instance.amount?.toJson(),
    };
