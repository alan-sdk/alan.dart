import 'package:alan/alan.dart';

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
    if (bodyBytes.isNotEmpty) {
      signDoc.bodyBytes = bodyBytes;
    }

    if (authInfoBytes.isNotEmpty) {
      signDoc.authInfoBytes = authInfoBytes;
    }

    if (data.chainId.isNotEmpty) {
      signDoc.chainId = data.chainId;
    }

    if (data.accountNumber > 0) {
      signDoc.accountNumber = data.accountNumber;
    }

    return signDoc.writeToBuffer();
  }
}
