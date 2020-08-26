import 'package:alan/alan.dart';

/// Allows to easily perform chain-related actions such as querying the
/// chain state or sending transactions to it.
class TxHelper {
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

    try {
      final tx = TxBuilder.buildStdTx(stdMsgs: messages, fee: fee);
      final signTx = await TxSigner.signStdTx(wallet: wallet, stdTx: tx);
      return await TxSender.broadcastStdTx(wallet: wallet, stdTx: signTx);
    } catch (exception) {
      return TransactionResult.fromException(exception);
    }
  }
}
