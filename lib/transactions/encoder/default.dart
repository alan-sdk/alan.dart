import 'package:alan/alan.dart';

/// Returns a default protobuf TxEncoder.
TxEncoder DefaultEncoder() {
  return (Tx tx) {
    // Check the body
    if (tx.body == null) {
      throw Exception('Empty body');
    }
    final bodyBz = tx.body.writeToBuffer();

    // Check the auth info
    if (tx.authInfo == null) {
      throw Exception('Empty auth info');
    }
    final authInfoBz = tx.authInfo.writeToBuffer();

    // Create the raw Tx
    final txRaw = TxRaw()
      ..authInfoBytes = authInfoBz
      ..bodyBytes = bodyBz;
    txRaw.signatures.addAll(tx.signatures);

    return txRaw.writeToBuffer();
  };
}
