import 'package:alan/alan.dart';
import 'package:test/test.dart';

void main() {
  group('Coins', () {
    test('isValid works properly', () {
      expect(<Coin>[].isValid, isFalse);
      expect(
        [
          Coin(denom: '', amount: '1'),
          Coin(denom: 'uatom', amount: '2'),
        ].isValid,
        isFalse,
      );
      expect(
        [
          Coin(denom: 'uatom', amount: '0'),
          Coin(denom: 'uatom', amount: '-1'),
        ].isValid,
        isFalse,
      );
      expect(
        [
          Coin(denom: 'uatom', amount: '1'),
          Coin(denom: 'uatom', amount: '2'),
        ].isValid,
        isTrue,
      );
    });

    test('isPositive works properly', () {
      expect(<Coin>[].isPositive, isFalse);
      expect(
        [
          Coin(denom: 'uatom', amount: '-1'),
          Coin(denom: 'uatom', amount: '0'),
        ].isPositive,
        isFalse,
      );
      expect(
        [
          Coin(denom: 'uatom', amount: '0'),
          Coin(denom: 'uatom', amount: '1'),
        ].isPositive,
        isFalse,
      );
      expect(
        [
          Coin(denom: 'uatom', amount: '1'),
          Coin(denom: 'uatom', amount: '2'),
        ].isPositive,
        isTrue,
      );
    });
  });
}
