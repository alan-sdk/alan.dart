import 'package:alan/alan.dart';
import 'package:test/test.dart';

void main() {
  final json = {'voting_period': '172800000000000'};
  final value = VotingParams(
    votingPeriod: '172800000000000',
  );

  test('fromJson works properly', () {
    expect(VotingParams.fromJson(json), equals(value));
  });

  test('toJson works properly', () {
    expect(value.toJson(), equals(json));
  });
}
