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
  @JsonKey(name: "txs")
  final List<Transaction> txs;

  TransactionsResponse({@required this.txs}) : assert(txs != null);

  @override
  List<Object> get props => [txs];

  factory TransactionsResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionsResponseToJson(this);
}

/// Contains the content of a single transaction.
@immutable
@JsonSerializable(explicitToJson: true)
class Transaction extends Equatable {
  @JsonKey(name: "height")
  final String height;

  @JsonKey(name: "txhash")
  final String hash;

  @JsonKey(name: "data")
  final String data;

  @JsonKey(name: "raw_log")
  final String rawLog;

  @JsonKey(name: "logs")
  final List<TransactionLog> logs;

  @JsonKey(name: "gas_wanted")
  final String gasWanted;

  @JsonKey(name: "gas_used")
  final String gasUsed;

  @JsonKey(name: "tx")
  final StdTxWrapper tx;

  @JsonKey(name: "timestamp")
  final String timeStamp;

  Transaction({
    @required this.height,
    @required this.hash,
    @required this.data,
    @required this.rawLog,
    @required this.logs,
    @required this.gasWanted,
    @required this.gasUsed,
    @required this.tx,
    @required this.timeStamp,
  });

  @override
  List<Object> get props => [
        height,
        hash,
        data,
        rawLog,
        logs,
        gasUsed,
        gasUsed,
        tx,
        timeStamp,
      ];

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionToJson(this);
}

@immutable
@JsonSerializable(explicitToJson: true)
class TransactionLog extends Equatable {
  @JsonKey(name: "msg_index")
  final int messageIndex;

  @JsonKey(name: "log")
  final String log;

  @JsonKey(name: "events")
  final List<LogEvent> events;

  TransactionLog({
    this.messageIndex,
    this.log,
    @required this.events,
  }) : assert(events != null);

  @override
  List<Object> get props => [messageIndex, log, events];

  factory TransactionLog.fromJson(Map<String, dynamic> json) =>
      _$TransactionLogFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionLogToJson(this);
}

/// Represents an event that is emitted while handling a message and is placed
/// inside the logs.
@immutable
@JsonSerializable(explicitToJson: true)
class LogEvent extends Equatable {
  @JsonKey(name: "type")
  final String type;

  @JsonKey(name: "attributes")
  final List<LogEventAttribute> attributes;

  LogEvent({
    @required this.type,
    @required this.attributes,
  })  : assert(type != null),
        assert(attributes != null);

  @override
  List<Object> get props => [type, attributes];

  factory LogEvent.fromJson(Map<String, dynamic> json) =>
      _$LogEventFromJson(json);

  Map<String, dynamic> toJson() => _$LogEventToJson(this);
}

/// Represents a single log event attribute.
@immutable
@JsonSerializable(explicitToJson: true)
class LogEventAttribute extends Equatable {
  @JsonKey(name: "ley")
  final String key;

  @JsonKey(name: "value")
  final String value;

  LogEventAttribute({
    @required this.key,
    @required this.value,
  })  : assert(key != null),
        assert(value != null);

  @override
  List<Object> get props => [key, value];

  factory LogEventAttribute.fromJson(Map<String, dynamic> json) =>
      _$LogEventAttributeFromJson(json);

  Map<String, dynamic> toJson() => _$LogEventAttributeToJson(this);
}

/// Wraps a [StdTx] adding the type to its external.
@immutable
@JsonSerializable(explicitToJson: true)
class StdTxWrapper extends Equatable {
  @JsonKey(name: "type")
  final String type;

  @JsonKey(name: "value")
  final StdTx value;

  StdTxWrapper({
    @required this.type,
    @required this.value,
  })  : assert(type != null),
        assert(value != null);

  @override
  List<Object> get props => [type, value];

  factory StdTxWrapper.fromJson(Map<String, dynamic> json) =>
      _$StdTxWrapperFromJson(json);

  Map<String, dynamic> toJson() => _$StdTxWrapperToJson(this);
}

/// Contains the data of a single message that was emitted during the
/// handling of a transaction's messages.
@immutable
@JsonSerializable(explicitToJson: true)
class MsgEvent extends Equatable {
  @JsonKey(name: "type")
  final String type;

  @JsonKey(name: "attributes")
  final List<Map<String, String>> attributes;

  MsgEvent({this.type, this.attributes})
      : assert(type != null),
        assert(attributes != null);

  @override
  List<Object> get props => [type, attributes];

  factory MsgEvent.fromJson(Map<String, dynamic> json) =>
      _$MsgEventFromJson(json);

  Map<String, dynamic> toJson() => _$MsgEventToJson(this);
}
