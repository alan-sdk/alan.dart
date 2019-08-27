import 'dart:io';

import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:sacco/tx_builder.dart';
import 'package:sacco/tx_signer.dart';
import 'package:sacco/utils/account_data_retriever.dart';
import 'package:test/test.dart';

import 'package:sacco/models/export.dart';

void main() {
  final derivationPath = "m/44'/118'/0'/0/0";
  final networkInfo = NetworkInfo(
    id: "test-chain-AMbAZr",
    bech32Hrp: "cosmos",
    lcdUrl: "http://localhost:1317",
  );
  final mnemonic = List<String>();
  mnemonic.add("final");
  mnemonic.add("random");
  mnemonic.add("flame");
  mnemonic.add("cinnamon");
  mnemonic.add("grunt");
  mnemonic.add("hazard");
  mnemonic.add("easily");
  mnemonic.add("mutual");
  mnemonic.add("resist");
  mnemonic.add("pond");
  mnemonic.add("solution");
  mnemonic.add("define");
  mnemonic.add("knife");
  mnemonic.add("female");
  mnemonic.add("tongue");
  mnemonic.add("crime");
  mnemonic.add("atom");
  mnemonic.add("jaguar");
  mnemonic.add("alert");
  mnemonic.add("library");
  mnemonic.add("best");
  mnemonic.add("forum");
  mnemonic.add("lesson");
  mnemonic.add("rigid");

  test('StdTx is signed correctly', () async {
    // Build a transaction
    final msg = MsgSend(
      fromAddress: "cosmos1huydeevpz37sd9snkgul6070mstupukw00xkw9",
      toAddress: "cosmos12lla7fg3hjd2zj6uvf4pqj7atx273klc487c5k",
      amount: [StdCoin(amount: "100", denom: "uatom")],
    );
    final tx = TxBuilder.buildStdTx(stdMsgs: [msg]);

    // Create a wallet
    final wallet = HexWallet.derive(mnemonic, derivationPath, networkInfo);

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
    print(signedTx.toString());

    final signature = signedTx.signatures[0];
    expect(signature.publicKey.type, "tendermint/PubKeySecp256k1");
    expect(signature.publicKey.value,
        "A2s4H8iNW3F3sJZ4R3FKIoiN4I+frf1SRdAogSVm0LKV");
    expect(signature.signature,
        "XHGnRMY/EKqD+N7HjrbsdHDCBBdvpNkjB+4lMrnsT1JxKVvKK5TNmgVV/866rXJTTwsoFURLGsljfxqIz0z/HQ==");
  });
}
