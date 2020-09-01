import 'package:alan/alan.dart';

void main() async {
  // -----------------------------------
  // --- Registering new msg types
  // -----------------------------------

  // MsgType needs to implement StdMsg
  // Codec.registerMsgType("my/MsgType", MyMsgType);

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

  final message = MsgSend(
    fromAddress: wallet.bech32Address,
    toAddress: "did:com:1lys5uu683wrmupn4zguz7f2gqw45qae98pzn3d",
    amount: [StdCoin(denom: "uatom", amount: "100")],
  );

  final stdTx = TxBuilder.buildStdTx([message]);

  // -----------------------------------
  // --- Signing a transaction
  // -----------------------------------

  final signedStdTx = await TxSigner.signStdTx(stdTx, wallet);

  // -----------------------------------
  // --- Sending a transaction
  // -----------------------------------
  final result = await TxSender.broadcastStdTx(signedStdTx, wallet);

  // Check the result
  if (result.success) {
    print("Tx send successfully. Hash: ${result.hash}");
  } else {
    print("Tx send error: ${result.error.errorMessage}");
  }
}
