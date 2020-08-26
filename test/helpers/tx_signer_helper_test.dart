import 'dart:io';

import 'package:alan/alan.dart';
import 'package:test/test.dart';

void main() {
  final networkInfo = NetworkInfo(
    bech32Hrp: 'desmos',
    lcdUrl: 'http://localhost:1317',
  );
  final wallet = Wallet.derive([
    'frown',
    'spike',
    'buyer',
    'diagram',
    'between',
    'output',
    'keep',
    'ask',
    'column',
    'wage',
    'kid',
    'layer',
    'nasty',
    'grab',
    'learn',
    'same',
    'morning',
    'fog',
    'mandate',
    'sphere',
    'cream',
    'focus',
    'sister',
    'lava',
  ], networkInfo, derivationPath: "m/44'/852'/0'/0/0");

  test('Multiple sign test', () async {
    // DO NOT execute this on CIs as we do not have a running node
    final envVars = Platform.environment;
    if (envVars['CI'] == 'true') {
      return;
    }

    for (var i = 1; i <= 7; i++) {
      final amount = i * 10;

      final message = MsgSend(
        fromAddress: wallet.bech32Address,
        toAddress: 'desmos1tvuu7rf0zakjw79hfnhvd73v5fvznrr8szfcan',
        amount: [StdCoin(denom: 'udaric', amount: amount.toString())],
      );

      final result = await TxHelper.sendTx([message], wallet);
      expect(result?.error?.errorMessage, isNull);

      sleep(const Duration(seconds: 7));
    }
  }, timeout: Timeout.factor(2));
}
