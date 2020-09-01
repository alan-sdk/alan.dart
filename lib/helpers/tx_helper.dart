import 'package:alan/alan.dart';

/// Allows to easily perform chain-related actions such as querying the
/// chain state or sending transactions to it.
class TxHelper {
  /// Creates, signs and sends a transaction containing the given
  /// [messages] using the info contained inside the given [wallet].
  static Future<TransactionResult> sendTx(
    List<StdMsg> messages,
    Wallet wallet, {
    StdFee fee = const StdFee(gas: '200000', amount: []),
    String mode = TxSender.MODE_SYNC,
  }) async {
    if (messages.isEmpty) {
      // No messages to send, simply return
      return null;
    }

    try {
      final tx = TxBuilder.buildStdTx(messages, fee: fee);
      final signedTx = await TxSigner.signStdTx(tx, wallet);
      return await TxSender.broadcastStdTx(signedTx, wallet, mode: mode);
    } catch (exception) {
      return TransactionResult.fromException(exception);
    }
  }
}
