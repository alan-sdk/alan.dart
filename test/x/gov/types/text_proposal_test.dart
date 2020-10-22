import 'package:alan/alan.dart';
import 'package:test/test.dart';

void main() {
  final json = {
    'title': 'Proposal title',
    'description': 'Proposal description',
  };
  final value = TextProposal(
    title: 'Proposal title',
    description: 'Proposal description',
  );

  test('fromJson works properly', () {
    expect(TextProposal.fromJson(json), equals(value));
  });

  test('asJson works properly', () {
    expect(value.asJson(), equals(json));
  });
}
