import 'package:alan/alan.dart';
import 'package:test/test.dart';

import 'content_test.reflectable.dart';

void main() {
  setUpAll(() {
    initializeReflectable();
  });

  final content = TextProposal(
    title: 'Proposal title',
    description: 'Proposal description',
  );

  final json = {
    'type': 'cosmos-sdk/TextProposal',
    'value': {
      'title': 'Proposal title',
      'description': 'Proposal description',
    }
  };

  test('toJson and fromJson work properly', () {
    expect(content.toJson(), equals(json));
    expect(ProposalContent.fromJson(json), equals(content));
  });
}
