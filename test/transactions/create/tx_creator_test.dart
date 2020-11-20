import 'dart:convert';
import 'dart:io';

import 'package:alan/alan.dart';
import 'package:alan/proto/cosmos/auth/v1beta1/export.dart' as auth;
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockAuthQuerier extends Mock implements AuthQuerier {}

class MockNodeQuerier extends Mock implements NodeQuerier {}

void main() {
  AuthQuerier authQuerier;
  NodeQuerier nodeQuerier;

  TxCreator creator;

  setUp(() {
    authQuerier = MockAuthQuerier();
    nodeQuerier = MockNodeQuerier();
    creator = TxCreator(authQuerier: authQuerier, nodeQuerier: nodeQuerier);
  });

  final mnemonic = [
    'sibling',
    'auction',
    'sibling',
    'flavor',
    'judge',
    'foil',
    'tube',
    'dust',
    'work',
    'mixed',
    'crush',
    'action',
    'menu',
    'property',
    'project',
    'ride',
    'crouch',
    'hat',
    'mom',
    'scale',
    'start',
    'ill',
    'spare',
    'panther',
  ];

  test('StdTx with fee is signed correctly', () async {
    when(authQuerier.getAccountData(any)).thenAnswer((_) {
      final file = File('test_resources/x/auth/response_account.json');
      final account = auth.BaseAccount.fromJson(file.readAsStringSync());
      return Future.value(account);
    });

    when(nodeQuerier.getNodeInfo(any)).thenAnswer((_) {
      final file = File('test_resources/x/node/response_node_info.json');
      final json = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
      final response = NodeInfoResponse.fromJson(json);
      return Future.value(response.nodeInfo);
    });

    // Create the network info
    final networkInfo = NetworkInfo(bech32Hrp: 'cosmos', fullNodeHost: 'test');

    // Build a transaction
    final msg = MsgSend.create();
    msg.fromAddress = 'cosmos1hafptm4zxy5nw8rd2pxyg83c5ls2v62tstzuv2';
    msg.toAddress = 'cosmos12lla7fg3hjd2zj6uvf4pqj7atx273klc487c5k';
    msg.amount.add(Coin.create()
      ..amount = '100'
      ..denom = 'uatom');

    final feeAmt = [
      Coin.create()
        ..amount = '250'
        ..denom = 'uatom'
    ];

    // Create a wallet
    final wallet = Wallet.derive(mnemonic, networkInfo);
    expect(wallet.networkInfo, networkInfo);

    // Sign the transaction
    final signedTx = await creator.generate(
      wallet,
      [msg],
      gas: 200000,
      feeAmt: feeAmt,
    );

    // Verify the signature
    expect(signedTx.signatures.length, 1);
    expect(
      base64.encode(signedTx.signatures[0]),
      'm2op4CCBa39fRZD91WiqtBLKbUQI+1OWsc1tJkpDg+8FYB4y51KahGn26MskVMpTJl5gToIC1pX26hLbW1Kxrg==',
    );
  });
}
