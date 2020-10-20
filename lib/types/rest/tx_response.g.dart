// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tx_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$TxResponseToJson(TxResponse instance) =>
    <String, dynamic>{
      'stringify': instance.stringify,
      'hashCode': instance.hashCode,
      'height': instance.height,
      'hash': instance.hash,
      'isSuccessful': instance.isSuccessful,
      'props': instance.props,
    };

AsyncTxResponse _$AsyncTxResponseFromJson(Map<String, dynamic> json) {
  return AsyncTxResponse(
    height: json['height'] as String,
    hash: json['txhash'] as String,
  );
}

Map<String, dynamic> _$AsyncTxResponseToJson(AsyncTxResponse instance) =>
    <String, dynamic>{
      'height': instance.height,
      'txhash': instance.hash,
    };
