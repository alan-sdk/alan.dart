import 'package:alan/proto/cosmos/gov/v1beta1/export.dart' as gov;
import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';

/// Allows to easily query the x/gov module of a chain.
class GovQuerier {
  final gov.QueryClient _client;

  GovQuerier._({
    @required ClientChannel channel,
  }) : _client = gov.QueryClient(channel);

  factory GovQuerier.build(ClientChannel channel) {
    return GovQuerier._(channel: channel);
  }

  /// Returns all the proposals stored on chain
  Future<List<gov.Proposal>> getProposals() async {
    final response = await _client.proposals(
      gov.QueryProposalsRequest.create(),
    );
    return response.proposals;
  }

  /// Returns the proposal having the given [id], or `null` if nothing is found.
  Future<gov.Proposal> getProposal(int id) async {
    final response = await _client.proposal(
      gov.QueryProposalRequest.create()..proposalId = fixnum.Int64(id),
    );
    return response.hasProposal() ? response.proposal : null;
  }

  /// Returns the proposer of the proposal having the given [proposalId],
  /// or `null` if nothing was found.
  Future<String> getProposalProposer(int proposalId) async {
    // TODO: Must implement
    throw Exception('Not implemented');
  }

  /// Returns all the deposits that have been made to the proposal having
  /// the given [proposalId].
  Future<List<gov.Deposit>> getProposalDeposits(int proposalId) async {
    final response = await _client.deposits(
      gov.QueryDepositsRequest.create()..proposalId = fixnum.Int64(proposalId),
    );
    return response.deposits;
  }

  /// Returns the deposit that the given [depositor] have made to the
  /// proposer having the given [proposalId], or `null` if not found.
  Future<gov.Deposit> getProposalDepositorDeposit(
    int proposalId,
    String depositor,
  ) async {
    final response = await _client.deposit(
      gov.QueryDepositRequest.create()
        ..proposalId = fixnum.Int64(proposalId)
        ..depositor = depositor,
    );
    return response.hasDeposit() ? response.deposit : null;
  }

  /// Returns the votes associated with the proposal having the
  /// given [proposalId].
  Future<List<gov.Vote>> getProposalVotes(int proposalId) async {
    final response = await _client.votes(
      gov.QueryVotesRequest.create()..proposalId = fixnum.Int64(proposalId),
    );
    return response.votes;
  }

  /// Returns the vote of the given [voter] to the proposal having the given
  /// [proposalId].
  Future<gov.Vote> getProposalVoteByVoter(int proposalId, String voter) async {
    final response = await _client.vote(
      gov.QueryVoteRequest.create()
        ..proposalId = fixnum.Int64(proposalId)
        ..voter = voter,
    );
    return response.hasVote() ? response.vote : null;
  }

  /// Returns the tally results for the proposal having the given [proposalId].
  Future<gov.TallyResult> getProposalTallyResult(int proposalId) async {
    final response = await _client.tallyResult(
      gov.QueryTallyResultRequest.create()
        ..proposalId = fixnum.Int64(proposalId),
    );
    return response.hasTally() ? response.tally : null;
  }

  // ---------------------------------------------------------------------
  // ---------------------------- PARAMS ---------------------------------
  // ---------------------------------------------------------------------

  /// Returns the current deposit params
  Future<gov.DepositParams> getDepositParams() async {
    final response = await _client.params(gov.QueryParamsRequest.create());
    return response.hasDepositParams() ? response.depositParams : null;
  }

  /// Returns the current tallying params
  Future<gov.TallyParams> getTallyParams() async {
    final response = await _client.params(gov.QueryParamsRequest.create());
    return response.hasTallyParams() ? response.tallyParams : null;
  }

  /// Returns the current voting params
  Future<gov.VotingParams> getVotingParams() async {
    final response = await _client.params(gov.QueryParamsRequest.create());
    return response.hasVotingParams() ? response.votingParams : null;
  }
}
