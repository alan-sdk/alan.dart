import 'package:alan/alan.dart';
import 'package:test/test.dart';

void main() {
  test('fromJson works properly', () {
    final json = {'bech32_hrp': 'test', 'lcd_url': 'test.example.com'};
    final expected = NetworkInfo(bech32Hrp: 'test', lcdUrl: 'test.example.com');
    expect(NetworkInfo.fromJson(json), expected);
  });

  test('toJson works properly', () {
    final info = NetworkInfo(bech32Hrp: 'test', lcdUrl: 'test.example.com');
    final json = {'bech32_hrp': 'test', 'lcd_url': 'test.example.com'};
    expect(info.toJson(), json);
  });

  test('toString works properly', () {
    final info = NetworkInfo(bech32Hrp: 'test', lcdUrl: 'test.example.com');
    expect(info.toString(), '{ bech32Hrp: test, lcdUrl: test.example.com }');
  });
}
