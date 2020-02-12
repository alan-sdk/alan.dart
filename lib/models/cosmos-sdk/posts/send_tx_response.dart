import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'send_tx_response.g.dart';

/// Represents the data that is returned from the chain upon posting a
/// transaction using the /txs endpoint.
@immutable
@JsonSerializable(explicitToJson: true)
class SendTxResponse extends Equatable {
  @JsonKey(name: "height")
  final String height;

  @JsonKey(name: "raw_log")
  final String rawLog;

  @JsonKey(name: "txhash")
  final String txHash;

  SendTxResponse({
    @required this.height,
    @required this.rawLog,
    @required this.txHash,
  });

  @override
  List<Object> get props => [height, rawLog, txHash];

  factory SendTxResponse.fromJson(Map<String, dynamic> json) =>
      _$SendTxResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SendTxResponseToJson(this);
}

/// Represents the object that is put inside the `raw_log` field of a
/// [SendTxResponse] if the transaction could not be processed due to
/// errors during the basic validation process.
@immutable
@JsonSerializable(explicitToJson: true)
class SendTxLog extends Equatable {
  @JsonKey(name: "code")
  final int code;

  @JsonKey(name: "message")
  final String message;

  SendTxLog({
    @required this.code,
    @required this.message,
  })  : assert(code != null),
        assert(message != null);

  @override
  List<Object> get props => [code, message];

  factory SendTxLog.fromJson(Map<String, dynamic> json) =>
      _$SendTxLogFromJson(json);

  Map<String, dynamic> toJson() => _$SendTxLogToJson(this);
}
