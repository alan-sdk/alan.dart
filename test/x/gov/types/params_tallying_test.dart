import 'package:alan/alan.dart';
import 'package:test/test.dart';

void main() {
  final json = {
    'quorum': '0.334000000000000000',
    'threshold': '0.500000000000000000',
    'veto': '0.334000000000000000'
  };
  final value = TallyingParams(
    quorum: '0.334000000000000000',
    threshold: '0.500000000000000000',
    veto: '0.334000000000000000',
  );

  test('fromJson works properly', () {
    expect(TallyingParams.fromJson(json), equals(value));
  });

  test('toJson works properly', () {
    expect(value.toJson(), equals(json));
  });
}
