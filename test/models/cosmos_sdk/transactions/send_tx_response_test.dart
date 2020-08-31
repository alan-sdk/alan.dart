import 'package:alan/alan.dart';
import 'package:test/test.dart';

void main() {
  test('fromJson works properly', () {
    final json = {
      'height': '0',
      'txhash':
          '088D36CF3CA68A0075E0405E64BE57D0BA6CD36B0E971FFE784E9583ABD60CDD',
      'raw_log': '[]',
    };
    final response = SendTxResponse.fromJson(json);
    expect(
      response,
      SendTxResponse(
        height: '0',
        rawLog: '[]',
        txHash:
            '088D36CF3CA68A0075E0405E64BE57D0BA6CD36B0E971FFE784E9583ABD60CDD',
      ),
    );
  });

  test('toJson works properly', () {
    final response = SendTxResponse(
      height: '0',
      rawLog: '[]',
      txHash:
      '088D36CF3CA68A0075E0405E64BE57D0BA6CD36B0E971FFE784E9583ABD60CDD',
    );
    final json = {
      'height': '0',
      'txhash':
      '088D36CF3CA68A0075E0405E64BE57D0BA6CD36B0E971FFE784E9583ABD60CDD',
      'raw_log': '[]',
    };
    expect(response.toJson(), json);
  });
}
