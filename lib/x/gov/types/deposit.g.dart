// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deposit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Deposit _$DepositFromJson(Map<String, dynamic> json) {
  return Deposit(
    proposalId: json['proposal_id'] as String,
    depositor: json['depositor'] as String,
    amount: (json['amount'] as List)
        ?.map((e) =>
            e == null ? null : Coin.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DepositToJson(Deposit instance) => <String, dynamic>{
      'proposal_id': instance.proposalId,
      'depositor': instance.depositor,
      'amount': instance.amount?.map((e) => e?.toJson())?.toList(),
    };
