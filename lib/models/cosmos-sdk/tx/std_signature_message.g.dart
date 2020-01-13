// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'std_signature_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StdSignatureMessage _$StdSignatureMessageFromJson(Map<String, dynamic> json) {
  return StdSignatureMessage(
    chainId: json['chain_id'] as String,
    accountNumber: json['account_number'] as String,
    sequence: json['sequence'] as String,
    memo: json['memo'] as String,
    fee: json['fee'] as Map<String, dynamic>,
    msgs:
        (json['msgs'] as List)?.map((e) => e as Map<String, dynamic>)?.toList(),
  );
}

Map<String, dynamic> _$StdSignatureMessageToJson(
        StdSignatureMessage instance) =>
    <String, dynamic>{
      'chain_id': instance.chainId,
      'account_number': instance.accountNumber,
      'sequence': instance.sequence,
      'memo': instance.memo,
      'fee': instance.fee,
      'msgs': instance.msgs,
    };
