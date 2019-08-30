import 'package:sacco/sacco.dart';
import 'package:test/test.dart';

void main() {
  test('toJson and fromJson work properly with optional fields', () {
    final networkInfo = NetworkInfo(
      id: "id",
      bech32Hrp: "bech32",
      lcdUrl: "lcd-url",
      iconUrl: "icon-url",
      name: "name",
    );

    final json = networkInfo.toJson();
    expect(networkInfo, NetworkInfo.fromJson(json));
  });
}
