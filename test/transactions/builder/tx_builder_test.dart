import 'dart:io';

import 'package:alan/alan.dart';
import 'package:test/test.dart';

import 'tx_builder_test.reflectable.dart';

void main() {
  setUpAll(() {
    initializeReflectable();
  });

  test('StdTx is built correctly', () {
    final message = MsgSend(
      fromAddress: 'cosmos1huydeevpz37sd9snkgul6070mstupukw00xkw9',
      toAddress: 'cosmos12lla7fg3hjd2zj6uvf4pqj7atx273klc487c5k',
      amount: [
        Coin.create()
          ..denom = 'uatom'
          ..amount = '100',
      ],
    );

    final tx = TxBuilder.create();
    tx.setMsgs([message]);

    final file = File('test_resources/SendStdTx.json');
    final expectedStd = Tx.fromJson(file.readAsStringSync());
    expect(tx, expectedStd);
  });
}
