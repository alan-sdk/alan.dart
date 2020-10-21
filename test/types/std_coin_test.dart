import 'package:alan/alan.dart';
import 'package:test/test.dart';

void main() {
  group('Coins', () {
    test('isValid works properly', () {
      expect(<StdCoin>[].isValid, isFalse);
      expect(
        [
          StdCoin(denom: '', amount: '1'),
          StdCoin(denom: 'uatom', amount: '2'),
        ].isValid,
        isFalse,
      );
      expect(
        [
          StdCoin(denom: 'uatom', amount: '0'),
          StdCoin(denom: 'uatom', amount: '-1'),
        ].isValid,
        isFalse,
      );
      expect(
        [
          StdCoin(denom: 'uatom', amount: '1'),
          StdCoin(denom: 'uatom', amount: '2'),
        ].isValid,
        isTrue,
      );
    });

    test('isPositive works properly', () {
      expect(<StdCoin>[].isPositive, isFalse);
      expect(
        [
          StdCoin(denom: 'uatom', amount: '-1'),
          StdCoin(denom: 'uatom', amount: '0'),
        ].isPositive,
        isFalse,
      );
      expect(
        [
          StdCoin(denom: 'uatom', amount: '0'),
          StdCoin(denom: 'uatom', amount: '1'),
        ].isPositive,
        isFalse,
      );
      expect(
        [
          StdCoin(denom: 'uatom', amount: '1'),
          StdCoin(denom: 'uatom', amount: '2'),
        ].isPositive,
        isTrue,
      );
    });
  });
}
