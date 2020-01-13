// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'std_tx.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StdTx _$StdTxFromJson(Map<String, dynamic> json) {
  return StdTx(
    messages:
        (json['msg'] as List)?.map((e) => e as Map<String, dynamic>)?.toList(),
    signatures: (json['signatures'] as List)
        ?.map((e) =>
            e == null ? null : StdSignature.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    fee: json['fee'] == null
        ? null
        : StdFee.fromJson(json['fee'] as Map<String, dynamic>),
    memo: json['memo'] as String,
  );
}

Map<String, dynamic> _$StdTxToJson(StdTx instance) => <String, dynamic>{
      'msg': instance.messages,
      'fee': instance.fee?.toJson(),
      'signatures': instance.signatures?.map((e) => e?.toJson())?.toList(),
      'memo': instance.memo,
    };
