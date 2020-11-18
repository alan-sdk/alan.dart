import 'package:alan/alan.dart';
import 'package:fixnum/fixnum.dart' as fixnum;

/// [DirectSignModeHandler] defines the [SIGN_MODE_DIRECT] [SignModeHandler].
class DirectSignModeHandler extends SignModeHandler {
  DirectSignModeHandler._();

  factory DirectSignModeHandler.create() {
    return DirectSignModeHandler._();
  }

  @override
  List<SignMode> get modes {
    return [SignMode.SIGN_MODE_DIRECT];
  }

  @override
  List<int> getSignBytes(SignMode mode, SignerData data, Tx tx) {
    if (mode != SignMode.SIGN_MODE_DIRECT) {
      return throw Exception('Unsupported sign mode: $mode');
    }

    final bodyBytes = tx.body.writeToBuffer();
    final authInfoBytes = tx.authInfo.writeToBuffer();

    final signDoc = SignDoc.create();
    signDoc.bodyBytes = bodyBytes;
    signDoc.authInfoBytes = authInfoBytes;
    signDoc.chainId = data.chainId;
    signDoc.accountNumber = fixnum.Int64(data.accountNumber);

    return signDoc.writeToBuffer();
  }
}
