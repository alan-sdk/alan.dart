// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionsResponse _$TransactionsResponseFromJson(Map<String, dynamic> json) {
  return TransactionsResponse(
    txs: (json['txs'] as List)
        ?.map((e) =>
            e == null ? null : Transaction.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TransactionsResponseToJson(
        TransactionsResponse instance) =>
    <String, dynamic>{
      'txs': instance.txs?.map((e) => e?.toJson())?.toList(),
    };

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return Transaction(
    height: json['height'] as String,
    hash: json['txhash'] as String,
    data: json['data'] as String,
    rawLog: json['raw_log'] as String,
    logs: (json['logs'] as List)
        ?.map((e) => e == null
            ? null
            : TransactionLog.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    gasWanted: json['gas_wanted'] as String,
    gasUsed: json['gas_used'] as String,
    tx: json['tx'] == null
        ? null
        : StdTxWrapper.fromJson(json['tx'] as Map<String, dynamic>),
    timeStamp: json['timestamp'] as String,
  );
}

Map<String, dynamic> _$TransactionToJson(Transaction instance) =>
    <String, dynamic>{
      'height': instance.height,
      'txhash': instance.hash,
      'data': instance.data,
      'raw_log': instance.rawLog,
      'logs': instance.logs?.map((e) => e?.toJson())?.toList(),
      'gas_wanted': instance.gasWanted,
      'gas_used': instance.gasUsed,
      'tx': instance.tx?.toJson(),
      'timestamp': instance.timeStamp,
    };

TransactionLog _$TransactionLogFromJson(Map<String, dynamic> json) {
  return TransactionLog(
    messageIndex: json['msg_index'] as int,
    log: json['log'] as String,
    events: (json['events'] as List)
        ?.map((e) =>
            e == null ? null : LogEvent.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TransactionLogToJson(TransactionLog instance) =>
    <String, dynamic>{
      'msg_index': instance.messageIndex,
      'log': instance.log,
      'events': instance.events?.map((e) => e?.toJson())?.toList(),
    };

LogEvent _$LogEventFromJson(Map<String, dynamic> json) {
  return LogEvent(
    type: json['type'] as String,
    attributes: (json['attributes'] as List)
        ?.map((e) => e == null
            ? null
            : LogEventAttribute.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$LogEventToJson(LogEvent instance) => <String, dynamic>{
      'type': instance.type,
      'attributes': instance.attributes?.map((e) => e?.toJson())?.toList(),
    };

LogEventAttribute _$LogEventAttributeFromJson(Map<String, dynamic> json) {
  return LogEventAttribute(
    key: json['key'] as String,
    value: json['value'] as String,
  );
}

Map<String, dynamic> _$LogEventAttributeToJson(LogEventAttribute instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };

StdTxWrapper _$StdTxWrapperFromJson(Map<String, dynamic> json) {
  return StdTxWrapper(
    type: json['type'] as String,
    value: json['value'] == null
        ? null
        : StdTx.fromJson(json['value'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StdTxWrapperToJson(StdTxWrapper instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value?.toJson(),
    };

MsgEvent _$MsgEventFromJson(Map<String, dynamic> json) {
  return MsgEvent(
    type: json['type'] as String,
    attributes: (json['attributes'] as List)
        ?.map((e) => (e as Map<String, dynamic>)?.map(
              (k, e) => MapEntry(k, e as String),
            ))
        ?.toList(),
  );
}

Map<String, dynamic> _$MsgEventToJson(MsgEvent instance) => <String, dynamic>{
      'type': instance.type,
      'attributes': instance.attributes,
    };
