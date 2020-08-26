import 'dart:convert';
import 'dart:io';

import 'package:alan/helpers/tx_builder.dart';
import 'package:alan/models/export.dart';
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
      amount: [StdCoin(denom: 'uatom', amount: '100')],
    );

    final stdTx = TxBuilder.buildStdTx(stdMsgs: [message]);

    final file = File('test_resources/SendStdTx.json');
    final expectedStd = StdTx.fromJson(
      jsonDecode(file.readAsStringSync()) as Map<String, dynamic>,
    );
    expect(stdTx, expectedStd);
  });
}
