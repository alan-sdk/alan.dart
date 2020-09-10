// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'msg_send.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MsgSend _$MsgSendFromJson(Map<String, dynamic> json) {
  return MsgSend(
    fromAddress: json['from_address'] as String,
    toAddress: json['to_address'] as String,
    amount: (json['amount'] as List)
        ?.map((e) =>
            e == null ? null : StdCoin.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MsgSendToJson(MsgSend instance) => <String, dynamic>{
      'from_address': instance.fromAddress,
      'to_address': instance.toAddress,
      'amount': instance.amount?.map((e) => e?.toJson())?.toList(),
    };
