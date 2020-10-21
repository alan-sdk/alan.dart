import 'package:alan/alan.dart';
import 'package:test/test.dart';

import '../../../common.dart';
import 'msg_vote_test.reflectable.dart';

void main() {
  setUpAll(() {
    initializeReflectable();
  });

  final message = MsgVote(
    proposalId: '21',
    voter: 'cosmos1l7r03unxglzala6dx3kndyqjlqrzpdwxuzm365',
    option: VoteOption.Yes,
  );

  final json = {
    'type': 'cosmos-sdk/MsgVote',
    'value': {
      'proposal_id': '21',
      'voter': 'cosmos1l7r03unxglzala6dx3kndyqjlqrzpdwxuzm365',
      'option': 'Yes'
    }
  };

  testMsgJson<MsgVote>(message, json);

  group('validate works properly', () {
    test('when message is valid', () {
      expect(message.validate(), isNull);
    });

    test('when proposal id is null or empty', () {
      final nullMsg = MsgVote(
        proposalId: null,
        voter: 'cosmos1l7r03unxglzala6dx3kndyqjlqrzpdwxuzm365',
        option: VoteOption.Yes,
      );
      expect(nullMsg.validate(), isException);

      final emptyMsg = MsgVote(
        proposalId: '',
        voter: 'cosmos1l7r03unxglzala6dx3kndyqjlqrzpdwxuzm365',
        option: VoteOption.Yes,
      );
      expect(emptyMsg.validate(), isException);
    });

    test('when voter is null or empty', () {
      final nullMsg = MsgVote(
        proposalId: '1',
        voter: null,
        option: VoteOption.Yes,
      );
      expect(nullMsg.validate(), isException);

      final emptyMsg = MsgVote(
        proposalId: '1',
        voter: '',
        option: VoteOption.Yes,
      );
      expect(emptyMsg.validate(), isException);
    });

    test('when option is null', () {
      final nullMsg = MsgVote(
        proposalId: '1',
        voter: 'cosmos1l7r03unxglzala6dx3kndyqjlqrzpdwxuzm365',
        option: null,
      );
      expect(nullMsg.validate(), isException);
    });
  });
}
