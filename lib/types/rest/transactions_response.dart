import 'package:alan/alan.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'transactions_response.g.dart';

/// Represents the response that is returned upon querying the /txs
/// endpoint.
@immutable
@JsonSerializable(explicitToJson: true)
class TransactionsResponse extends Equatable {
  @JsonKey(name: 'txs')
  final List<Transaction> txs;

  TransactionsResponse({
    @required this.txs,
  });

  factory TransactionsResponse.fromJson(Map<String, dynamic> json) {
    return _$TransactionsResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$TransactionsResponseToJson(this);
  }

  @override
  List<Object> get props {
    return [txs];
  }
}

/// Contains the content of a single transaction.
@immutable
@JsonSerializable(explicitToJson: true)
class Transaction extends Equatable {
  @JsonKey(name: 'height')
  final String height;

  @JsonKey(name: 'txhash')
  final String hash;

  @JsonKey(name: 'raw_log')
  final String rawLog;

  @JsonKey(name: 'logs')
  final List<TransactionLog> logs;

  @JsonKey(name: 'gas_wanted')
  final String gasWanted;

  @JsonKey(name: 'gas_used')
  final String gasUsed;

  @JsonKey(name: 'tx')
  final StdTxWrapper tx;

  @JsonKey(name: 'timestamp')
  final String timeStamp;

  Transaction({
    @required this.height,
    @required this.hash,
    @required this.rawLog,
    @required this.logs,
    @required this.gasWanted,
    @required this.gasUsed,
    @required this.tx,
    @required this.timeStamp,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return _$TransactionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$TransactionToJson(this);
  }

  @override
  List<Object> get props {
    return [
      height,
      hash,
      rawLog,
      logs,
      gasUsed,
      gasUsed,
      tx,
      timeStamp,
    ];
  }
}

@immutable
@JsonSerializable(explicitToJson: true)
class TransactionLog extends Equatable {
  @JsonKey(name: 'msg_index')
  final int messageIndex;

  @JsonKey(name: 'log')
  final String log;

  @JsonKey(name: 'events')
  final List<LogEvent> events;

  TransactionLog({
    this.messageIndex,
    this.log,
    @required this.events,
  });

  factory TransactionLog.fromJson(Map<String, dynamic> json) {
    return _$TransactionLogFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$TransactionLogToJson(this);
  }

  @override
  List<Object> get props {
    return [messageIndex, log, events];
  }
}

/// Represents an event that is emitted while handling a message and is placed
/// inside the logs.
@immutable
@JsonSerializable(explicitToJson: true)
class LogEvent extends Equatable {
  @JsonKey(name: 'type')
  final String type;

  @JsonKey(name: 'attributes')
  final List<LogEventAttribute> attributes;

  LogEvent({
    @required this.type,
    @required this.attributes,
  });

  factory LogEvent.fromJson(Map<String, dynamic> json) {
    return _$LogEventFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$LogEventToJson(this);
  }

  @override
  List<Object> get props {
    return [type, attributes];
  }
}

/// Represents a single log event attribute.
@immutable
@JsonSerializable(explicitToJson: true)
class LogEventAttribute extends Equatable {
  @JsonKey(name: 'key')
  final String key;

  @JsonKey(name: 'value')
  final String value;

  LogEventAttribute({
    @required this.key,
    @required this.value,
  });

  factory LogEventAttribute.fromJson(Map<String, dynamic> json) {
    return _$LogEventAttributeFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$LogEventAttributeToJson(this);
  }

  @override
  List<Object> get props {
    return [key, value];
  }
}

/// Wraps a [StdTx] adding the type to its external.
@immutable
@JsonSerializable(explicitToJson: true)
class StdTxWrapper extends Equatable {
  @JsonKey(name: 'type')
  final String type;

  @JsonKey(name: 'value')
  final StdTx value;

  StdTxWrapper({
    @required this.type,
    @required this.value,
  });

  factory StdTxWrapper.fromJson(Map<String, dynamic> json) {
    return _$StdTxWrapperFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$StdTxWrapperToJson(this);
  }

  @override
  List<Object> get props {
    return [type, value];
  }
}

/// Contains the data of a single message that was emitted during the
/// handling of a transaction's messages.
@immutable
@JsonSerializable(explicitToJson: true)
class MsgEvent extends Equatable {
  @JsonKey(name: 'type')
  final String type;

  @JsonKey(name: 'attributes')
  final List<Map<String, String>> attributes;

  MsgEvent({
    @required this.type,
    @required this.attributes,
  });

  factory MsgEvent.fromJson(Map<String, dynamic> json) {
    return _$MsgEventFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$MsgEventToJson(this);
  }

  @override
  List<Object> get props {
    return [type, attributes];
  }
}
