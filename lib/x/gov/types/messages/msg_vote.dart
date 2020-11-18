import 'package:alan/alan.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'msg_vote.g.dart';

/// Defines a message to cast a vote.
@reflector
@JsonSerializable(explicitToJson: true)
class MsgVote extends StdMsg {
  @JsonKey(name: 'proposal_id')
  final String proposalId;

  @JsonKey(name: 'voter')
  final String voter;

  final VoteOption option;

  MsgVote({
    @required this.proposalId,
    @required this.voter,
    @required this.option,
  });

  factory MsgVote.fromJson(Map<String, dynamic> json) {
    return _$MsgVoteFromJson(json);
  }

  @override
  Map<String, dynamic> asJson() {
    return _$MsgVoteToJson(this);
  }

  @override
  List<Object> get props {
    return [proposalId, voter, option];
  }

  @override
  Exception validate() {
    if (proposalId?.isNotEmpty != true) {
      return Exception('Invalid proposal id');
    }

    if (voter?.isNotEmpty != true) {
      return Exception('Invalid voter address');
    }

    if (option == null) {
      return Exception('Invalid vote option');
    }

    return null;
  }
}

/// Defines a vote option
enum VoteOption {
  @JsonValue('Yes')
  Yes,

  @JsonValue('Abstain')
  Abstain,

  @JsonValue('No')
  No,

  @JsonValue('NoWithVeto')
  NoWithVeto,
}
