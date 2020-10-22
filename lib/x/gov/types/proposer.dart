import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'proposer.g.dart';

/// Contains metadata of a governance proposal used for querying a proposer.
@JsonSerializable(explicitToJson: true)
class Proposer extends Equatable {
  @JsonKey(name: 'proposal_id')
  final String proposalId;

  @JsonKey(name: 'proposer')
  final String proposer;

  Proposer({
    @required this.proposalId,
    @required this.proposer,
  });

  factory Proposer.fromJson(Map<String, dynamic> json) {
    return _$ProposerFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ProposerToJson(this);
  }

  @override
  List<Object> get props {
    return [proposalId, proposer];
  }
}
