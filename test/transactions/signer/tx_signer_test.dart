import 'dart:convert';
import 'dart:io';

import 'package:alan/alan.dart';
import 'package:alan/proto/cosmos/auth/v1beta1/export.dart' as auth;
import 'package:alan/proto/cosmos/bank/v1beta1/export.dart' as bank;
import 'package:convert/convert.dart';
import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockAuthQuerier extends Mock implements AuthQuerier {}

class MockNodeQuerier extends Mock implements NodeQuerier {}

void main() {
  AuthQuerier authQuerier;
  NodeQuerier nodeQuerier;

  TxSigner signer;

  setUp(() {
    authQuerier = MockAuthQuerier();
    nodeQuerier = MockNodeQuerier();
    signer = TxSigner(authQuerier: authQuerier, nodeQuerier: nodeQuerier);
  });

  final networkInfo = NetworkInfo(bech32Hrp: 'cosmos', fullNodeHost: 'test');
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

  test('Transaction with fees is created and signed correctly', () async {
    when(authQuerier.getAccountData(any)).thenAnswer((_) {
      final pubKey = Any()
        ..typeUrl = '/cosmos.crypto.secp256k1.PubKey'
        ..value = hex.decode(
          '0a2102b30ed93e4534a91e176680658d35da9fdca5af7e3ea2aac3619c4113e1027df0',
        );

      final account = auth.BaseAccount()
        ..pubKey = pubKey
        ..address = 'cosmos1hafptm4zxy5nw8rd2pxyg83c5ls2v62tstzuv2'
        ..sequence = fixnum.Int64(0)
        ..accountNumber = fixnum.Int64(0);
      return Future.value(account);
    });

    when(nodeQuerier.getNodeInfo(any)).thenAnswer((_) {
      final file = File('test_resources/x/node/response_node_info.json');
      final json = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
      final response = NodeInfoResponse.fromJson(json);
      return Future.value(response.nodeInfo);
    });

    // Build a transaction
    final msg = bank.MsgSend.create();
    msg.fromAddress = 'cosmos1hafptm4zxy5nw8rd2pxyg83c5ls2v62tstzuv2';
    msg.toAddress = 'cosmos12lla7fg3hjd2zj6uvf4pqj7atx273klc487c5k';
    msg.amount.add(
      Coin.create()
        ..amount = '100'
        ..denom = 'uatom',
    );

    // Create a wallet
    final wallet = Wallet.derive(mnemonic, networkInfo);
    expect(wallet.networkInfo, networkInfo);

    // Sign the transaction
    final fee = Fee();
    fee.gasLimit = 200000.toInt64();
    fee.amount.add(
      Coin.create()
        ..amount = '250'
        ..denom = 'uatom',
    );
    final signedTx = await signer.createAndSign(
      wallet,
      [msg],
      fee: fee,
    );

    // Verify the signature
    expect(signedTx.signatures.length, 1);
    expect(
      base64.encode(signedTx.signatures[0]),
      'YNKhO6RsyVu4+a1jr+I10G909a04IT/nlSswJ/HR9DoDiYmH1dACSP3k8xkHSvP18FMbi9edGoGKlt0tuyiZYQ==',
    );
  });
}
