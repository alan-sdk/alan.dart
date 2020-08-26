import 'dart:convert';

import 'package:alan/alan.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

/// Allows to easily send a [StdTx] using the data contained inside the
/// specified [Wallet].
class TxSender {
  /// Broadcasts the given [stdTx] using the info contained
  /// inside the given [wallet].
  /// Returns the hash of the transaction once it has been send, or throws an
  /// exception if an error is risen during the sending.
  static Future<TransactionResult> broadcastStdTx({
    @required Wallet wallet,
    @required StdTx stdTx,
    String mode = 'sync',
  }) async {
    try {
      // Get the endpoint
      final apiUrl = '${wallet.networkInfo.lcdUrl}/txs';

      // Build the request body
      final requestBody = {'tx': stdTx.toJson(), 'mode': mode};
      final requestBodyJson = jsonEncode(requestBody);

      // Get the response
      final response = await http.Client().post(apiUrl, body: requestBodyJson);
      if (response.statusCode != 200) {
        return TransactionResult.fromException(
          'Expected status code 200 but got ${response.statusCode} - ${response.body}',
        );
      }

      // Convert the response
      final json = SendTxResponse.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return _convertResponse(json);
    } catch (exception) {
      return TransactionResult.fromException(exception);
    }
  }

  /// Converts the given [response] to a [TransactionResult] object.
  static TransactionResult _convertResponse(SendTxResponse response) {
    final rawLog = jsonDecode(response.rawLog) as dynamic;
    if (rawLog is Map<String, dynamic>) {
      final log = SendTxLog.fromJson(rawLog);
      return TransactionResult(
        raw: response.toJson(),
        hash: response.txHash,
        success: false,
        error: TransactionError(
          errorCode: log.code,
          errorMessage: log.message,
        ),
      );
    }

    return TransactionResult(
      raw: response.toJson(),
      hash: response.txHash,
      success: true,
      error: null,
    );
  }
}
