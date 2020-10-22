import 'package:alan/alan.dart';
import 'package:test/test.dart';

void main() {
  final json = {
    'yes': '101845973043268',
    'abstain': '559408864',
    'no': '21185026706',
    'no_with_veto': '106144492'
  };
  final value = TallyResult(
    yes: '101845973043268',
    abstain: '559408864',
    no: '21185026706',
    noWithVeto: '106144492',
  );

  test('fromJson works properly', () {
    expect(TallyResult.fromJson(json), equals(value));
  });

  test('toJson works properly', () {
    expect(value.toJson(), equals(json));
  });
}
