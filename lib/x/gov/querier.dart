import 'package:alan/alan.dart';
import 'package:alan/x/gov/types/params.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

/// Allows to easily query the x/gov module of a chain.
class GovQuerier extends QueryHelper {
  GovQuerier({
    @required http.Client httpClient,
  }) : super(httpClient: httpClient);

  factory GovQuerier.build(http.Client httpClient) {
    return GovQuerier(httpClient: httpClient);
  }

  /// Returns all the proposals stored on chain
  Future<List<Proposal>> getProposals(String lcdEndpoint) async {
    final url = '/gov/proposals';
    final result = await queryChain(lcdEndpoint + url);
    if (!result.isSuccessful) {
      return [];
    }

    final response = LcdResponse.fromJson(result.value);
    return (response.result as List)
        .map((e) => Proposal.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Returns the proposal having the given [id], or `null` if nothing is found.
  Future<Proposal> getProposalById(String lcdEndpoint, String id) async {
    final url = '/gov/proposals/${id}';
    final result = await queryChain(lcdEndpoint + url);
    if (!result.isSuccessful) {
      return null;
    }

    final response = LcdResponse.fromJson(result.value);
    return Proposal.fromJson(response.result as Map<String, dynamic>);
  }

  /// Returns the proposer of the proposal having the given [proposalId],
  /// or `null` if nothing was found.
  Future<Proposer> getProposalProposer(
    String lcdEndpoint,
    String proposalId,
  ) async {
    final url = '/gov/proposals/${proposalId}/proposer';
    final result = await queryChain(lcdEndpoint + url);
    if (!result.isSuccessful) {
      return null;
    }

    final response = LcdResponse.fromJson(result.value);
    return Proposer.fromJson(response.result as Map<String, dynamic>);
  }

  /// Returns all the deposits that have been made to the proposal having
  /// the given [proposalId].
  Future<List<Deposit>> getProposalDeposits(
    String lcdEndpoint,
    String proposalId,
  ) async {
    final url = '/gov/proposals/${proposalId}/deposits';
    final result = await queryChain(lcdEndpoint + url);
    if (!result.isSuccessful) {
      return [];
    }

    final response = LcdResponse.fromJson(result.value);
    return (response.result as List)
        .map((e) => Deposit.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Returns the deposit that the given [depositor] have made to the
  /// proposer having the given [proposalId], or `null` if not found.
  Future<Deposit> getProposalDepositorDeposit(
    String lcdEndpoint,
    String proposalId,
    String depositor,
  ) async {
    final url = '/gov/proposals/${proposalId}/depositors/${depositor}';
    final result = await queryChain(lcdEndpoint + url);
    if (!result.isSuccessful) {
      return null;
    }

    final response = LcdResponse.fromJson(result.value);
    return Deposit.fromJson(response.result as Map<String, dynamic>);
  }

  /// Returns the votes associated with the proposal having the
  /// given [proposalId].
  Future<List<Vote>> getProposalVotes(
    String lcdEndpoint,
    String proposalId,
  ) async {
    final url = '/gov/proposals/${proposalId}/votes';
    final result = await queryChain(lcdEndpoint + url);
    if (!result.isSuccessful) {
      return [];
    }

    final response = LcdResponse.fromJson(result.value);
    return (response.result as List)
        .map((e) => Vote.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Returns the vote of the given [voter] to the proposal having the given
  /// [proposalId].
  Future<Vote> getProposalVoteByVoter(
    String lcdEndpoint,
    String proposalId,
    String voter,
  ) async {
    final url = '/gov/proposals/${proposalId}/votes/${voter}';
    final result = await queryChain(lcdEndpoint + url);
    if (!result.isSuccessful) {
      return null;
    }

    final response = LcdResponse.fromJson(result.value);
    return Vote.fromJson(response.result as Map<String, dynamic>);
  }

  /// Returns the tally results for the proposal having the given [proposalId].
  Future<TallyResult> getProposalTallyResult(
    String lcdEndpoint,
    String proposalId,
  ) async {
    final url = '/gov/proposals/${proposalId}/tally';
    final result = await queryChain(lcdEndpoint + url);
    if (!result.isSuccessful) {
      return null;
    }

    final response = LcdResponse.fromJson(result.value);
    return TallyResult.fromJson(response.result as Map<String, dynamic>);
  }

  // ---------------------------------------------------------------------
  // --------------------------- GENERIC ---------------------------------
  // ---------------------------------------------------------------------

  /// Returns the current deposit params
  Future<DepositParams> getDepositParams(String lcdEndpoint) async {
    final url = '/gov/parameters/deposit';
    final result = await queryChain(lcdEndpoint + url);
    if (!result.isSuccessful) {
      return null;
    }

    final response = LcdResponse.fromJson(result.value);
    return DepositParams.fromJson(response.result as Map<String, dynamic>);
  }

  /// Returns the current tallying params
  Future<TallyingParams> getTallyingParams(String lcdEndpoint) async {
    final url = '/gov/parameters/tallying';
    final result = await queryChain(lcdEndpoint + url);
    if (!result.isSuccessful) {
      return null;
    }

    final response = LcdResponse.fromJson(result.value);
    return TallyingParams.fromJson(response.result as Map<String, dynamic>);
  }

  /// Returns the current voting params
  Future<VotingParams> getVotingParams(String lcdEndpoint) async {
    final url = '/gov/parameters/voting';
    final result = await queryChain(lcdEndpoint + url);
    if (!result.isSuccessful) {
      return null;
    }

    final response = LcdResponse.fromJson(result.value);
    return VotingParams.fromJson(response.result as Map<String, dynamic>);
  }
}
