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
    gasWanted: json['gas_wanted'] as String,
    gasUsed: json['gas_used'] as String,
    tx: json['tx'] == null
        ? null
        : StdTxWrapper.fromJson(json['tx'] as Map<String, dynamic>),
    timeStamp: json['timestamp'] as String,
    events: (json['events'] as List)
        ?.map((e) =>
            e == null ? null : MsgEvent.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TransactionToJson(Transaction instance) =>
    <String, dynamic>{
      'height': instance.height,
      'txhash': instance.hash,
      'data': instance.data,
      'raw_log': instance.rawLog,
      'gas_wanted': instance.gasWanted,
      'gas_used': instance.gasUsed,
      'tx': instance.tx?.toJson(),
      'timestamp': instance.timeStamp,
      'events': instance.events?.map((e) => e?.toJson())?.toList(),
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
