import 'package:alan/alan.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'vote.g.dart';

/// Represents the vote for a proposal
@JsonSerializable(explicitToJson: true)
class Vote extends Equatable {
  @JsonKey(name: 'proposal_id')
  final String proposalId;

  @JsonKey(name: 'voter')
  final String voter;

  @JsonKey(name: 'option')
  final VoteOption option;

  Vote({
    @required this.proposalId,
    @required this.voter,
    @required this.option,
  });

  factory Vote.fromJson(Map<String, dynamic> json) {
    return _$VoteFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$VoteToJson(this);
  }

  @override
  List<Object> get props {
    return [proposalId, voter, option];
  }
}
