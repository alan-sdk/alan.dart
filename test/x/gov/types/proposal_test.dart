import 'package:alan/alan.dart';
import 'package:test/test.dart';

import 'proposal_test.reflectable.dart';

void main() {
  setUpAll(() {
    initializeReflectable();
  });

  final json = {
    'content': {
      'type': 'cosmos-sdk/TextProposal',
      'value': {
        'title': 'Proposal title',
        'description': 'Proposal description'
      }
    },
    'id': '6',
    'proposal_status': 'Passed',
    'final_tally_result': {
      'yes': '110522077231139',
      'abstain': '11773440000',
      'no': '4000000',
      'no_with_veto': '0'
    },
    'submit_time': '2019-05-03T18:14:33.209053883Z',
    'deposit_end_time': '2019-05-17T18:14:33.209053883Z',
    'total_deposit': [
      {'denom': 'uatom', 'amount': '516000000'}
    ],
    'voting_start_time': '2019-05-03T19:50:58.076569857Z',
    'voting_end_time': '2019-05-17T19:50:58.076569857Z'
  };
  final value = Proposal(
    content: TextProposal(
      title: 'Proposal title',
      description: 'Proposal description',
    ),
    proposalId: '6',
    status: ProposalStatus.StatusPassed,
    finalTallyResult: TallyResult(
      yes: '110522077231139',
      abstain: '11773440000',
      no: '4000000',
      noWithVeto: '0',
    ),
    submitTime: '2019-05-03T18:14:33.209053883Z',
    depositEndTime: '2019-05-17T18:14:33.209053883Z',
    totalDeposit: [Coin(denom: 'uatom', amount: '516000000')],
    votingStartTime: '2019-05-03T19:50:58.076569857Z',
    votingEndTime: '2019-05-17T19:50:58.076569857Z',
  );

  test('fromJson works properly', () {
    expect(Proposal.fromJson(json), equals(value));
  });

  test('toJson works properly', () {
    expect(value.toJson(), equals(json));
  });
}
