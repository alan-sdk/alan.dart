// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'msg_deposit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MsgDeposit _$MsgDepositFromJson(Map<String, dynamic> json) {
  return MsgDeposit(
    proposalId: json['proposal_id'] as int,
    depositor: json['depositor'] as String,
    amount: (json['amount'] as List)
        ?.map((e) =>
            e == null ? null : StdCoin.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MsgDepositToJson(MsgDeposit instance) =>
    <String, dynamic>{
      'proposal_id': instance.proposalId,
      'depositor': instance.depositor,
      'amount': instance.amount?.map((e) => e?.toJson())?.toList(),
    };
