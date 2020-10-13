import 'package:alan/alan.dart';

/// Allows to easily build and sign a [StdTx] that can later be sent over
/// the network.
class TxBuilder {
  /// Builds a [StdTx] object containing the given [stdMsgs] and having the
  /// optional [memo] and [fee] specified.
  static StdTx buildStdTx(
    List<StdMsg> stdMsgs, {
    String memo = '',
    StdFee fee = const StdFee(gas: '200000', amount: []),
  }) {
    // Validate the messages
    stdMsgs.forEach((msg) {
      final error = msg.validate();
      if (error != null) {
        throw error;
      }
    });

    return StdTx(
      messages: stdMsgs,
      memo: memo,
      fee: fee,
      signatures: null,
    );
  }
}
