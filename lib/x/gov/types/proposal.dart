import 'package:alan/alan.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'proposal.g.dart';

enum ProposalStatus {
  @JsonValue('DepositPeriod')
  StatusDepositPeriod,
  @JsonValue('VotingPeriod')
  StatusVotingPeriod,
  @JsonValue('Passed')
  StatusPassed,
  @JsonValue('Rejected')
  StatusRejected,
  @JsonValue('Failed')
  StatusFailed,
}

/// Defines a struct used by the governance module to allow for voting
/// on network changes.
@JsonSerializable(explicitToJson: true)
class Proposal extends Equatable {
  @JsonKey(name: 'content')
  final ProposalContent content;

  @JsonKey(name: 'id')
  final String proposalId;

  @JsonKey(name: 'proposal_status')
  final ProposalStatus status;

  @JsonKey(name: 'final_tally_result')
  final TallyResult finalTallyResult;

  @JsonKey(name: 'submit_time')
  final String submitTime;

  @JsonKey(name: 'deposit_end_time')
  final String depositEndTime;

  @JsonKey(name: 'total_deposit')
  final List<StdCoin> totalDeposit;

  @JsonKey(name: 'voting_start_time')
  final String votingStartTime;

  @JsonKey(name: 'voting_end_time')
  final String votingEndTime;

  Proposal({
    this.content,
    this.proposalId,
    this.status,
    this.finalTallyResult,
    this.submitTime,
    this.depositEndTime,
    this.totalDeposit,
    this.votingStartTime,
    this.votingEndTime,
  });

  factory Proposal.fromJson(Map<String, dynamic> json) {
    return _$ProposalFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ProposalToJson(this);
  }

  @override
  List<Object> get props {
    return [
      content,
      proposalId,
      status,
      finalTallyResult,
      submitTime,
      depositEndTime,
      totalDeposit,
      votingEndTime,
      votingStartTime
    ];
  }
}
