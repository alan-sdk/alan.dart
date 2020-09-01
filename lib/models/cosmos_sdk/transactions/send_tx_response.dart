import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'send_tx_response.g.dart';

/// Represents the data that is returned from the chain upon posting a
/// transaction using the /txs endpoint.
@immutable
@JsonSerializable(explicitToJson: true)
class SendTxResponse extends Equatable {
  @JsonKey(name: 'height')
  final String height;

  @JsonKey(name: 'raw_log')
  final String rawLog;

  @JsonKey(name: 'txhash')
  final String txHash;

  SendTxResponse({
    @required this.height,
    @required this.rawLog,
    @required this.txHash,
  });

  factory SendTxResponse.fromJson(Map<String, dynamic> json) {
    return _$SendTxResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SendTxResponseToJson(this);
  }

  @override
  List<Object> get props {
    return [height, rawLog, txHash];
  }
}

/// Represents the object that is put inside the `raw_log` field of a
/// [SendTxResponse] if the transaction could not be processed due to
/// errors during the basic validation process.
@immutable
@JsonSerializable(explicitToJson: true)
class SendTxLog extends Equatable {
  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'message')
  final String message;

  SendTxLog({
    @required this.code,
    @required this.message,
  })  : assert(code != null),
        assert(message != null);

  factory SendTxLog.fromJson(Map<String, dynamic> json) {
    return _$SendTxLogFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SendTxLogToJson(this);
  }

  @override
  List<Object> get props {
    return [code, message];
  }
}
