import 'package:alan/alan.dart';
import 'package:test/test.dart';

import '../../../common.dart';
import 'msg_submit_proposal_test.reflectable.dart';

void main() {
  setUpAll(() {
    initializeReflectable();
  });

  final message = MsgSubmitProposal(
    content: TextProposal(
      title: 'Proposal title',
      description: 'Proposal description',
    ),
    initialDeposit: [
      Coin(denom: 'uatom', amount: '512000000'),
    ],
    proposer: 'cosmos1grgelyng2v6v3t8z87wu3sxgt9m5s03xvslewd',
  );

  final json = {
    'type': 'cosmos-sdk/MsgSubmitProposal',
    'value': {
      'content': {
        'type': 'cosmos-sdk/TextProposal',
        'value': {
          'title': 'Proposal title',
          'description': 'Proposal description'
        }
      },
      'initial_deposit': [
        {'denom': 'uatom', 'amount': '512000000'}
      ],
      'proposer': 'cosmos1grgelyng2v6v3t8z87wu3sxgt9m5s03xvslewd'
    }
  };

  testMsgJson<MsgSubmitProposal>(message, json);

  group('validate works properly', () {
    test('with valid message', () {
      expect(message.validate(), isNull);
    });

    test('when content is null', () {
      final msg = MsgSubmitProposal(
        content: null,
        initialDeposit: [Coin(denom: 'uatom', amount: '100')],
        proposer: 'proposer_address',
      );
      expect(msg.validate(), isException);
    });

    test('when proposer is empty', () {
      final nullMsg = MsgSubmitProposal(
        content: TextProposal(title: 'title', description: 'description'),
        initialDeposit: [Coin(denom: 'uatom', amount: '100')],
        proposer: null,
      );
      expect(nullMsg.validate(), isException);

      final emptyMsg = MsgSubmitProposal(
        content: TextProposal(title: 'title', description: 'description'),
        initialDeposit: [Coin(denom: 'uatom', amount: '100')],
        proposer: '',
      );
      expect(emptyMsg.validate(), isException);
    });

    test('when initial deposit is invalid or negative', () {
      final nullMsg = MsgSubmitProposal(
        content: TextProposal(title: 'title', description: 'description'),
        initialDeposit: null,
        proposer: 'proposer_address',
      );
      expect(nullMsg.validate(), isException);

      final invalidMsg = MsgSubmitProposal(
        content: TextProposal(title: 'title', description: 'description'),
        initialDeposit: [Coin(denom: '', amount: '100')],
        proposer: 'proposer_address',
      );
      expect(invalidMsg.validate(), isException);

      final negativeMsg = MsgSubmitProposal(
        content: TextProposal(title: 'title', description: 'description'),
        initialDeposit: [Coin(denom: 'uatom', amount: '-100')],
        proposer: 'proposer_address',
      );
      expect(negativeMsg.validate(), isException);
    });

    test('when content is invalid', () {
      final msg = MsgSubmitProposal(
        content: TextProposal(title: '', description: ''),
        initialDeposit: [Coin(denom: 'uatom', amount: '100')],
        proposer: 'proposer_address',
      );
      expect(msg.validate(), isException);
    });
  });
}
