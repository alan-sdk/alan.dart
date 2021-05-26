import 'package:alan/alan.dart';
import 'package:test/test.dart';

void main() {
  test('fromJson works properly', () {
    final json = {'bech32_hrp': 'test', 'full_node_host': 'test.example.com'};
    final expected = NetworkInfo.fromSingleHost(
      bech32Hrp: 'test',
      host: 'test.example.com',
    );
    expect(NetworkInfo.fromJson(json), expected);
  });

  test('toJson works properly', () {
    final info = NetworkInfo.fromSingleHost(
      bech32Hrp: 'test',
      host: 'test.example.com',
    );
    final json = {
      'bech32_hrp': 'test',
      'full_node_host': 'test.example.com',
      'lcd_port': 1317,
      'grpc_port': 9090,
    };
    expect(info.toJson(), json);
  });

  test('toString works properly', () {
    final info = NetworkInfo.fromSingleHost(
      bech32Hrp: 'test',
      host: 'test.example.com',
    );
    expect(
      info.toString(),
      '{ '
      'bech32Hrp: test, '
      'fullNodeHost: test.example.com, '
      'lcdPort: 1317, '
      'gRPCPort: 9090 '
      '}',
    );
  });
}
