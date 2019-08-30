import 'package:sacco/sacco.dart';

void main() async {
  // -----------------------------------
  // --- Creating a wallet
  // -----------------------------------

  final derivationPath = "m/44'/118'/0'/0/0";
  final networkInfo = NetworkInfo(
    id: "cosmos-hub2",
    bech32Hrp: "cosmos",
    lcdUrl: "http://lcd-cosmos.commercio.network",
  );

  final mnemonicString =
      "final random flame cinnamon grunt hazard easily mutual resist pond solution define knife female tongue crime atom jaguar alert library best forum lesson rigid";
  final mnemonic = mnemonicString.split(" ");
  final wallet = Wallet.derive(mnemonic, derivationPath, networkInfo);

  final message = StdMsg(
    type: "cosmos-sdk/MsgSend",
    value: {
      "from_address": "cosmos1huydeevpz37sd9snkgul6070mstupukw00xkw9",
      "to_address": "cosmos12lla7fg3hjd2zj6uvf4pqj7atx273klc487c5k",
      "amount": [
        {"denom": "uatom", "amount": "100"}
      ]
    },
  );

  // -----------------------------------
  // --- Creating a transaction
  // -----------------------------------

  final stdTx = TxBuilder.buildStdTx(stdMsgs: [message]);

  // -----------------------------------
  // --- Creating a transaction
  // -----------------------------------

  final signedStdTx = await TxSigner.signStdTx(wallet: wallet, stdTx: stdTx);

  // -----------------------------------
  // --- Sending a transaction
  // -----------------------------------

  try {
    final hash = await TxSender.broadcastStdTx(
      wallet: wallet,
      stdTx: signedStdTx,
    );
    print("Tx send successfully. Hash: $hash");
  } catch (error) {
    print("Error while sending the tx: $error");
  }
}
