import 'dart:convert';

import 'package:alan/alan.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'tx_response.g.dart';

/// Represents the data that is returned from the chain upon posting a
/// transaction using the /txs endpoint.
@immutable
@JsonSerializable(explicitToJson: true, createFactory: false)
abstract class TxResponse extends Equatable {
  final String height;
  final String hash;

  TxResponse({
    @required this.height,
    @required this.hash,
  });

  factory TxResponse.fromJson(Map<String, dynamic> json, SendMode mode) {
    switch (mode) {
      case SendMode.MODE_ASYNC:
        return AsyncTxResponse.fromJson(json);
        break;
      case SendMode.MODE_SYNC:
        return SyncTxResponse.fromJson(json);
        break;
      case SendMode.MODE_BLOCK:
        return BlockTxResponse.fromJson(json);
        break;
      default:
        throw Exception('Cannot parse transaction response');
    }
  }

  /// Tells if the request was successful or not
  bool get isSuccessful;

  Map<String, dynamic> toJson() {
    return _$TxResponseToJson(this);
  }

  @override
  List<Object> get props {
    return [height, hash];
  }

  @override
  String toString() {
    return jsonEncode(toJson());
  }
}

/// Represents the response that should be used when something fails due
/// to an exception.
class ErrorTxResponse extends TxResponse {
  final String error;

  ErrorTxResponse(this.error);

  @override
  bool get isSuccessful {
    return false;
  }
}

/// Represents the response that is returned from the LCD when a
/// transaction is sent to the /tx endpoint using the `async` method.
@immutable
@JsonSerializable(explicitToJson: true)
class AsyncTxResponse extends TxResponse {
  @override
  @JsonKey(name: 'height')
  final String height;

  @override
  @JsonKey(name: 'txhash')
  final String hash;

  AsyncTxResponse({
    @required this.height,
    @required this.hash,
  }) : super(height: height, hash: hash);

  factory AsyncTxResponse.fromJson(Map<String, dynamic> json) {
    return _$AsyncTxResponseFromJson(json);
  }

  /// Async calls are always successful
  @override
  bool get isSuccessful {
    return true;
  }

  @override
  Map<String, dynamic> toJson() {
    return _$AsyncTxResponseToJson(this);
  }

  @override
  List<Object> get props {
    return [height, hash];
  }
}

/// Represents the response that is returned from the LCD when a
/// transaction is sent to the /tx endpoint using the `sync` method.
@immutable
class SyncTxResponse extends TxResponse {
  static const _HEIGHT_KEY = 'height';
  static const _TX_HASH_KEY = 'txhash';
  static const _RAW_LOG_KEY = 'raw_log';

  final String rawLog;

  final TxResponseError error;

  SyncTxResponse({
    @required String height,
    @required String hash,
    this.rawLog,
    this.error,
  }) : super(height: height, hash: hash);

  factory SyncTxResponse.fromJson(Map<String, dynamic> json) {
    return SyncTxResponse(
      height: json[_HEIGHT_KEY] as String,
      hash: json[_TX_HASH_KEY] as String,
      rawLog: json[_RAW_LOG_KEY] as String,
      error: TxResponseError.fromJson(json),
    );
  }

  @override
  bool get isSuccessful {
    return error == null;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{
      _HEIGHT_KEY: height,
      _TX_HASH_KEY: hash,
      _RAW_LOG_KEY: error == null ? '[]' : error.message,
    };

    if (error != null) {
      final errorJson = error.toJson();
      json.addAll(errorJson);
    }

    return json;
  }

  @override
  List<Object> get props {
    return [height, hash];
  }
}

@immutable
class BlockTxResponse extends TxResponse {
  static const _HEIGHT_KEY = 'height';
  static const _TX_HASH_KEY = 'txhash';
  static const _RAW_LOG_KEY = 'raw_log';
  static const _LOGS_KEY = 'logs';
  static const _GAS_WANTED_KEY = 'gas_wanted';
  static const _GAS_USED_KEY = 'gas_used';

  final String gasWanted;
  final String gasUsed;
  final String rawLog;
  final List<TransactionLog> logs;
  final TxResponseError error;

  BlockTxResponse({
    @required String height,
    @required String hash,
    @required this.gasWanted,
    @required this.gasUsed,
    this.rawLog,
    this.logs,
    this.error,
  }) : super(height: height, hash: hash);

  factory BlockTxResponse.fromJson(Map<String, dynamic> json) {
    List<TransactionLog> logs;
    if (json.containsKey(_LOGS_KEY)) {
      final jsonLogs = json[_LOGS_KEY] as List<dynamic>;
      logs = jsonLogs.map((e) {
        return TransactionLog.fromJson(e as Map<String, dynamic>);
      }).toList();
    }

    return BlockTxResponse(
      gasWanted: json[_GAS_WANTED_KEY] as String,
      gasUsed: json[_GAS_USED_KEY] as String,
      height: json[_HEIGHT_KEY] as String,
      hash: json[_TX_HASH_KEY] as String,
      rawLog: json[_RAW_LOG_KEY] as String,
      logs: logs,
      error: TxResponseError.fromJson(json),
    );
  }

  @override
  bool get isSuccessful {
    return error == null;
  }

  @override
  Map<String, dynamic> toJson() {
    final jsonLogs = logs?.map((e) => e.toJson())?.toList();

    var jsonMap = <String, dynamic>{
      _GAS_WANTED_KEY: gasWanted,
      _GAS_USED_KEY: gasUsed,
      _HEIGHT_KEY: height,
      _TX_HASH_KEY: hash,
      _RAW_LOG_KEY: error == null ? jsonEncode(jsonLogs) : error.message,
    };

    if (logs != null) {
      jsonMap[_LOGS_KEY] = jsonLogs;
    }

    if (error != null) {
      jsonMap.addAll(error.toJson());
    }

    return jsonMap;
  }

  @override
  List<Object> get props {
    return [height, hash, logs, error];
  }
}

/// Represents an error of a transaction.
@immutable
class TxResponseError extends Equatable {
  static const _CODE_KEY = 'code';
  static const _CODESPACE_KEY = 'codespace';
  static const _LOG_KEY = 'raw_log';

  final int code;
  final String codeSpace;
  final String message;

  TxResponseError({
    @required this.code,
    @required this.message,
    this.codeSpace,
  });

  factory TxResponseError.fromJson(Map<String, dynamic> json) {
    if (!json.containsKey(_CODE_KEY)) {
      return null;
    }

    return TxResponseError(
      code: json[_CODE_KEY] as int,
      codeSpace: json[_CODESPACE_KEY] as String,
      message: json[_LOG_KEY] as String,
    );
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{_CODE_KEY: code, _LOG_KEY: message};
    if (codeSpace != null) {
      map[_CODESPACE_KEY] = codeSpace;
    }
    return map;
  }

  @override
  List<Object> get props {
    return [code, codeSpace, message];
  }
}
