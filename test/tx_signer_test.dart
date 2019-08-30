import 'dart:io';

import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:sacco/sacco.dart';
import 'package:sacco/utils/account_data_retriever.dart';
import 'package:test/test.dart';

void main() {
  final derivationPath = "m/44'/118'/0'/0/0";
  final mnemonic =
      "sibling auction sibling flavor judge foil tube dust work mixed crush action menu property project ride crouch hat mom scale start ill spare panther"
          .split(" ");

  test('StdTx with fee is signed correctly', () async {
    // Create the network info
    final networkInfo = NetworkInfo(
      id: "cosmos-hub2",
      bech32Hrp: "cosmos",
      lcdUrl: "http://localhost:1317",
    );

    // Build a transaction
    final msg = MsgSend(
      fromAddress: "cosmos1hafptm4zxy5nw8rd2pxyg83c5ls2v62tstzuv2",
      toAddress: "cosmos12lla7fg3hjd2zj6uvf4pqj7atx273klc487c5k",
      amount: [StdCoin(amount: "100", denom: "uatom")],
    );
    final fee = StdFee(
      gas: "200000",
      amount: [StdCoin(amount: "250", denom: "uatom")],
    );
    final tx = TxBuilder.buildStdTx(stdMsgs: [msg], fee: fee);

    // Create a wallet
    final wallet = Wallet.derive(mnemonic, derivationPath, networkInfo);
    expect(wallet.networkInfo.id, networkInfo.id);

    // Create a mock client
    final client = MockClient((request) async {
      final responseFile = File('test_resources/AccountDataResponse.json');
      final responseBody = await responseFile.readAsString();
      return Response(responseBody, 200);
    });

    // Setup the client
    AccountDataRetrieval.client = client;

    // Sign the transaction
    final signedTx = await TxSigner.signStdTx(wallet: wallet, stdTx: tx);
    expect(signedTx.signatures.length, 1);

    final signature = signedTx.signatures[0];
    expect(signature.publicKey.type, "tendermint/PubKeySecp256k1");
    expect(signature.publicKey.value,
        "ArMO2T5FNKkeF2aAZY012p/cpa9+PqKqw2GcQRPhAn3w");
    expect(signature.value,
        "m2op4CCBa39fRZD91WiqtBLKbUQI+1OWsc1tJkpDg+8FYB4y51KahGn26MskVMpTJl5gToIC1pX26hLbW1Kxrg==");
  });
}
