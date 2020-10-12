// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'msg_begin_redelegate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MsgBeginRedelegate _$MsgBeginRedelegateFromJson(Map<String, dynamic> json) {
  return MsgBeginRedelegate(
    delegatorAddress: json['delegator_address'] as String,
    validatorSourceAddress: json['validator_src_address'] as String,
    validatorDestinationAddress: json['validator_dst_address'] as String,
    amount: json['amount'] == null
        ? null
        : StdCoin.fromJson(json['amount'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MsgBeginRedelegateToJson(MsgBeginRedelegate instance) =>
    <String, dynamic>{
      'delegator_address': instance.delegatorAddress,
      'validator_src_address': instance.validatorSourceAddress,
      'validator_dst_address': instance.validatorDestinationAddress,
      'amount': instance.amount?.toJson(),
    };
