// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'msg_delegate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MsgDelegate _$MsgDelegateFromJson(Map<String, dynamic> json) {
  return MsgDelegate(
    delegatorAddress: json['delegator_address'] as String,
    validatorAddress: json['validator_address'] as String,
    amount: json['amount'] == null
        ? null
        : Coin.fromJson(json['amount'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MsgDelegateToJson(MsgDelegate instance) =>
    <String, dynamic>{
      'delegator_address': instance.delegatorAddress,
      'validator_address': instance.validatorAddress,
      'amount': instance.amount?.toJson(),
    };
