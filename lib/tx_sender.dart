import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:sacco/sacco.dart';

import 'package:sacco/models/export.dart';

/// Allows to easily send a [StdTx] using the data contained inside the
/// specified [Wallet].
class TxSender {
  /// Broadcasts the given [stdTx] using the info contained
  /// inside the given [wallet].
  /// Returns the hash of the transaction once it has been send, or throws an
  /// exception if an error is risen during the sending.
  static Future<String> broadcastStdTx({
    @required Wallet wallet,
    @required StdTx stdTx,
  }) async {
    // Get the endpoint
    final apiUrl = "${wallet.networkInfo.lcdUrl}/txs";

    // Build the request body
    final requestBody = {"tx": stdTx.toJson(), "mode": "sync"};
    final requestBodyJson = jsonEncode(requestBody);

    // Get the response
    final response = await http.Client().post(apiUrl, body: requestBodyJson);
    if (response.statusCode != 200) {
      throw Exception(
        "Excpected status code 200 but got ${response.statusCode} - ${response.body}",
      );
    }

    // Get the Tx hash
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    if (!json.containsKey("txhash")) {
      throw Exception("No hash inside response: $json");
    } else {
      return json["txhash"];
    }
  }
}
