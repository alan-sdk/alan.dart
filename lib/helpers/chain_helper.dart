import 'dart:convert';

import 'package:alan/alan.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

/// Allows to easily perform chain-related actions such as querying the
/// chain state or sending transactions to it.
class ChainHelper {
  /// Queries the chain at the given [url].
  static Future<Map<String, dynamic>> queryChain(String url) async {
    final httpClient = http.Client();
    final data = await httpClient.get(url);
    if (data.statusCode != 200) {
      throw Exception("Call to $url returned status code ${data.statusCode}");
    }

    return json.decode(utf8.decode(data.bodyBytes));
  }

  /// Creates, signs and sends a transaction containing the given
  /// [messages] using the info contained inside the given [wallet].
  static Future<TransactionResult> sendTx(
    List<StdMsg> messages,
    Wallet wallet, {
    StdFee fee = const StdFee(gas: "200000", amount: []),
  }) async {
    if (messages.isEmpty) {
      // No messages to send, simply return
      return null;
    }

    // Build the tx
    final tx = TxBuilder.buildStdTx(
      stdMsgs: messages,
      fee: fee,
    );

    // Sign the tx
    final signTx = await TxSigner.signStdTx(
      wallet: wallet,
      stdTx: tx,
    );

    print('Sending a new tx to the chain: \n ${jsonEncode(signTx)}');

    // Send the tx to the chain
    final result = await TxSender.broadcastStdTx(
      wallet: wallet,
      stdTx: signTx,
    );

    if (!result.success) {
      final jsonTx = jsonEncode(signTx);
      final error = result.error.errorMessage;
      throw Exception("Error while sending transaction $jsonTx: $error");
    }

    return result;
  }
}
