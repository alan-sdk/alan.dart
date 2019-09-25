import 'package:sacco/sacco.dart';

void main() async {
  // -----------------------------------
  // --- Creating a wallet
  // -----------------------------------

  final networkInfo = NetworkInfo(
    bech32Hrp: "did:com:",
    lcdUrl: "http://localhost:1317",
  );

  final mnemonicString =
      "vivid favorite regular curve check word bubble echo disorder cute parade neck rib evidence option glimpse couple force angry section dizzy puppy express cream";
  final mnemonic = mnemonicString.split(" ");
  final wallet = Wallet.derive(mnemonic, networkInfo);

  // -----------------------------------
  // --- Creating a transaction
  // -----------------------------------

  final message = StdMsg(
    type: "cosmos-sdk/MsgSend",
    value: {
      "from_address": wallet.bech32Address,
      "to_address": "did:com:1lys5uu683wrmupn4zguz7f2gqw45qae98pzn3d",
      "amount": [
        {"denom": "uatom", "amount": "100"}
      ]
    },
  );

  final stdTx = TxBuilder.buildStdTx(stdMsgs: [message]);

  // -----------------------------------
  // Signing a transaction
  // -----------------------------------

  final signedStdTx = await TxSigner.signStdTx(wallet: wallet, stdTx: stdTx);

  // -----------------------------------
  // --- Sending a transaction
  // -----------------------------------

  final result = await TxSender.broadcastStdTx(
    wallet: wallet,
    stdTx: signedStdTx,
  );

  // Check the result
  if (result.success) {
    print("Tx send successfully. Hash: ${result.hash}");
  } else {
    print("Tx send error: ${result.error.errorMessage}");
  }
}
