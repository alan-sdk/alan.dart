import 'dart:io';

import 'package:alan/helpers/tx_builder.dart';
import 'package:alan/models/export.dart';
import 'package:test/test.dart';

void main() {
  test('StdTx is built correctly', () {
    final message = MsgSend(
      fromAddress: "cosmos1huydeevpz37sd9snkgul6070mstupukw00xkw9",
      toAddress: "cosmos12lla7fg3hjd2zj6uvf4pqj7atx273klc487c5k",
      amount: [StdCoin(denom: "uatom", amount: "100")],
    );

    final file = File('test_resources/SendStdTx.json');

    final stdTx = TxBuilder.buildStdTx(stdMsgs: [message]);
    expect(stdTx.toString(), file.readAsStringSync());
  });
}
