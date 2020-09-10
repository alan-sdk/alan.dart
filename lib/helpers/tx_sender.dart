import 'dart:convert';

import 'package:alan/alan.dart';
import 'package:http/http.dart' as http;

/// Allows to easily send a [StdTx] using the data contained inside the
/// specified [Wallet].
class TxSender {
  static const MODE_SYNC = 'sync';
  static const MODE_ASYNC = 'async';
  static const MODE_BLOCK = 'block';

  /// Broadcasts the given [stdTx] using the info contained
  /// inside the given [wallet].
  /// Returns the hash of the transaction once it has been send, or throws an
  /// exception if an error is risen during the sending.
  static Future<TransactionResult> broadcastStdTx(
    StdTx stdTx,
    Wallet wallet, {
    String mode = MODE_SYNC,
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
      final responseBody = jsonDecode(response.body) as Map<String, dynamic>;
      var responseMode = '';
      if (mode == MODE_SYNC) {
        responseMode = TxResponse.MODE_SYNC;
      } else if (mode == MODE_ASYNC) {
        responseMode = TxResponse.MODE_ASYNC;
      } else if (mode == MODE_BLOCK) {
        responseMode = TxResponse.MODE_BLOCK;
      }

      final json = TxResponse.fromJson(responseBody, responseMode);
      return _convertResponse(json);
    } catch (exception) {
      return TransactionResult.fromException(exception);
    }
  }

  /// Converts the given [response] to a [TransactionResult] object.
  static TransactionResult _convertResponse(TxResponse response) {
    return TransactionResult(
      raw: response.toJson(),
      hash: response.hash,
      success: true,
      error: null,
    );
  }
}
