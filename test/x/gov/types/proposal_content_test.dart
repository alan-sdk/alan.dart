import 'package:alan/alan.dart';
import 'package:test/test.dart';

import 'proposal_content_test.reflectable.dart';

void main() {
  setUpAll(() {
    initializeReflectable();
  });

  final json = {
    'type': 'cosmos-sdk/TextProposal',
    'value': {
      'title': 'Proposal title',
      'description': 'Proposal description',
    }
  };
  final ProposalContent value = TextProposal(
    title: 'Proposal title',
    description: 'Proposal description',
  );

  test('fromJson works properly', () {
    expect(ProposalContent.fromJson(json), equals(value));
  });

  test('toJson works properly', () {
    expect(value.toJson(), equals(json));
  });
}
