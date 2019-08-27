import 'package:meta/meta.dart';
import 'package:sacco/models/export.dart';

/// Allows to easily build and sign a [StdTx] that can later be sent over
/// the network.
class TxBuilder {
  /// Builds a [StdTx] object containing the given [stdMsgs] and having the
  /// optional [memo] and [fee] specified.
  static StdTx buildStdTx({
    @required List<StdMsg> stdMsgs,
    String memo = "",
    StdFee fee = const StdFee(gas: "200000", amount: []),
  }) {
    return StdTx(
      messages: stdMsgs,
      memo: memo,
      fee: fee,
      signatures: null,
    );
  }
}
