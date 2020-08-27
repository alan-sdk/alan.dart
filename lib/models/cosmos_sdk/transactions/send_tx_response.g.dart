// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_tx_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendTxResponse _$SendTxResponseFromJson(Map<String, dynamic> json) {
  return SendTxResponse(
    height: json['height'] as String,
    rawLog: json['raw_log'] as String,
    txHash: json['txhash'] as String,
  );
}

Map<String, dynamic> _$SendTxResponseToJson(SendTxResponse instance) =>
    <String, dynamic>{
      'height': instance.height,
      'raw_log': instance.rawLog,
      'txhash': instance.txHash,
    };

SendTxLog _$SendTxLogFromJson(Map<String, dynamic> json) {
  return SendTxLog(
    code: json['code'] as int,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$SendTxLogToJson(SendTxLog instance) => <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };
