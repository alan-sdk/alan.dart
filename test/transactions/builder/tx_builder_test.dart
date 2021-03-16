import 'dart:io';

import 'package:alan/alan.dart';
import 'package:test/test.dart';

void main() {
  test('StdTx is built correctly', () {
    final message = MsgSend.create()
      ..fromAddress = 'cosmos1huydeevpz37sd9snkgul6070mstupukw00xkw9'
      ..toAddress = 'cosmos12lla7fg3hjd2zj6uvf4pqj7atx273klc487c5k';
    message.amount.add(Coin.create()
      ..denom = 'uatom'
      ..amount = '100');

    final builder = TxBuilder.create();
    builder.setMsgs([message]);

    final tx = builder.getTx();

    final file = File('test_resources/transactions/tx_generate.json');
    final expectedStd = Tx.fromJson(file.readAsStringSync());
    expect(tx, expectedStd);
  });
}
