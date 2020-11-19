import 'dart:io';

import 'package:alan/alan.dart';
import 'package:http/http.dart' as http;
import 'package:mock_web_server/mock_web_server.dart';
import 'package:test/test.dart';

import 'querier_test.reflectable.dart';

void main() {
  MockWebServer server;
  GovQuerier querier;

  setUpAll(() {
    initializeReflectable();

    server = MockWebServer();
    server.start();
  });

  setUp(() {
    // Clean the dispatcher to avoid cross-testing conflicts
    server.dispatcher = null;
    querier = GovQuerier(httpClient: http.Client());
  });

  group('getProposals', () {
    test('returns list properly', () async {
      final file = File('test_resources/x/gov/response_proposals.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await querier.getProposals(server.url);
      expect(result, hasLength(16));
    });

    test('returns empty list with failed request', () async {
      server.enqueue(httpCode: 401);

      final result = await querier.getProposals(server.url);
      expect(result, isEmpty);
    });
  });

  group('getProposal', () {
    test('returns data properly', () async {
      final file = File('test_resources/x/gov/response_proposal.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await querier.getProposal(server.url, '1');
      expect(result.proposalId, '6');
      expect(result.content, isA<TextProposal>());
    });

    test('returns null with failed request', () async {
      server.enqueue(httpCode: 401);

      final result = await querier.getProposal(server.url, '2');
      expect(result, isNull);
    });
  });

  group('getProposalProposer', () {
    test('returns data properly', () async {
      final file = File('test_resources/x/gov/response_proposal_proposer.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await querier.getProposalProposer(server.url, '1');
      expect(result.proposalId, '21');
      expect(result.proposer, 'cosmos137s39w2l2g4f6z6k8vu78uf53fmrq5njuph607');
    });

    test('returns null with failed request', () async {
      server.enqueue(httpCode: 401);

      final result = await querier.getProposalProposer(server.url, '2');
      expect(result, isNull);
    });
  });

  group('getProposalDeposits', () {
    test('returns list properly', () async {
      final file = File('test_resources/x/gov/response_proposal_deposits.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await querier.getProposalDeposits(server.url, '1');
      expect(result, hasLength(1));
      expect(result[0].amount[0].amount, '256000000');
    });

    test('returns empty list with failed request', () async {
      server.enqueue(httpCode: 401);

      final result = await querier.getProposalDeposits(server.url, '1');
      expect(result, isEmpty);
    });
  });

  group('getProposalDepositorDeposit', () {
    test('returns data properly', () async {
      final file = File('test_resources/x/gov/response_proposal_deposit.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await querier.getProposalDepositorDeposit(
        server.url,
        '1',
        'cosmos130mdu9a0etmeuw52qfxk73pn0ga6gawkryh2z6',
      );
      expect(result.proposalId, '27');
      expect(result.depositor, 'cosmos130mdu9a0etmeuw52qfxk73pn0ga6gawkryh2z6');
      expect(result.amount[0].amount, '256000000');
    });

    test('returns null with failed request', () async {
      server.enqueue(httpCode: 401);

      final result = await querier.getProposalDepositorDeposit(
        server.url,
        '2',
        'cosmos137s39w2l2g4f6z6k8vu78uf53fmrq5njuph607',
      );
      expect(result, isNull);
    });
  });

  group('getProposalVotes', () {
    test('returns list properly', () async {
      final file = File('test_resources/x/gov/response_proposal_votes.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await querier.getProposalVotes(server.url, '1');
      expect(result, hasLength(30));
      expect(result[0].option, VoteOption.Yes);
    });

    test('returns empty list with failed request', () async {
      server.enqueue(httpCode: 401);

      final result = await querier.getProposalVotes(server.url, '1');
      expect(result, isEmpty);
    });
  });

  group('getProposalVoteByVoter', () {
    test('returns data properly', () async {
      final file = File('test_resources/x/gov/response_proposal_vote.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await querier.getProposalVoteByVoter(
        server.url,
        '1',
        'cosmos1xk5frhw0zn35h7t265zmj6tpzmr9hehhycfumk',
      );
      expect(result.proposalId, '27');
      expect(result.voter, 'cosmos1xk5frhw0zn35h7t265zmj6tpzmr9hehhycfumk');
      expect(result.option, VoteOption.Yes);
    });

    test('returns null with failed request', () async {
      server.enqueue(httpCode: 401);

      final result = await querier.getProposalVoteByVoter(
        server.url,
        '2',
        'cosmos1xk5frhw0zn35h7t265zmj6tpzmr9hehhycfumk',
      );
      expect(result, isNull);
    });
  });

  group('getProposalTallyResult', () {
    test('returns data properly', () async {
      final file = File('test_resources/x/gov/response_proposal_tally.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await querier.getProposalTallyResult(server.url, '1');
      expect(
        result,
        equals(TallyResult(
          yes: '101845973043268',
          abstain: '559408864',
          no: '21185026706',
          noWithVeto: '106144492',
        )),
      );
    });

    test('returns null with failed request', () async {
      server.enqueue(httpCode: 401);

      final result = await querier.getProposalTallyResult(server.url, '2');
      expect(result, isNull);
    });
  });

  // ---------------------------------------------------------------------
  // ---------------------------- PARAMS ---------------------------------
  // ---------------------------------------------------------------------

  group('getDepositParams', () {
    test('returns data properly', () async {
      final file = File('test_resources/x/gov/response_params_deposit.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await querier.getDepositParams(server.url);
      expect(
        result,
        equals(DepositParams(
          minDeposit: [
            Coin(denom: 'udaric', amount: '10000000'),
          ],
          maxDepositPeriod: '172800000000000',
        )),
      );
    });

    test('returns null with failed request', () async {
      server.enqueue(httpCode: 401);

      final result = await querier.getDepositParams(server.url);
      expect(result, isNull);
    });
  });

  group('getTallyingParams', () {
    test('returns data properly', () async {
      final file = File('test_resources/x/gov/response_params_tallying.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await querier.getTallyingParams(server.url);
      expect(
        result,
        equals(TallyingParams(
          quorum: '0.334000000000000000',
          threshold: '0.500000000000000000',
          veto: '0.334000000000000000',
        )),
      );
    });

    test('returns null with failed request', () async {
      server.enqueue(httpCode: 401);

      final result = await querier.getTallyingParams(server.url);
      expect(result, isNull);
    });
  });

  group('getVotingParams', () {
    test('returns data properly', () async {
      final file = File('test_resources/x/gov/response_params_voting.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await querier.getVotingParams(server.url);
      expect(
        result,
        equals(VotingParams(votingPeriod: '172800000000000')),
      );
    });

    test('returns null with failed request', () async {
      server.enqueue(httpCode: 401);

      final result = await querier.getVotingParams(server.url);
      expect(result, isNull);
    });
  });
}
