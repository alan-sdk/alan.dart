import 'package:alan/alan.dart';
import 'package:json_annotation/json_annotation.dart';

part 'msg_submit_proposal.g.dart';

/// Defines a message to create a governance proposal with a given content
/// and initial deposit.
@reflector
@JsonSerializable(explicitToJson: true)
class MsgSubmitProposal extends StdMsg {
  @JsonKey(name: 'content')
  final ProposalContent content;

  @JsonKey(name: 'initial_deposit')
  final List<Coin> initialDeposit;

  @JsonKey(name: 'proposer')
  final String proposer;

  MsgSubmitProposal({
    this.content,
    this.initialDeposit,
    this.proposer,
  });

  factory MsgSubmitProposal.fromJson(Map<String, dynamic> json) {
    return _$MsgSubmitProposalFromJson(json);
  }

  @override
  Map<String, dynamic> asJson() {
    return _$MsgSubmitProposalToJson(this);
  }

  @override
  List<Object> get props {
    return [content, initialDeposit, proposer];
  }

  @override
  Exception validate() {
    if (content == null) {
      return Exception('Content cannot be null');
    }

    if (proposer?.isNotEmpty != true) {
      return Exception('Proposer address cannot be empty');
    }

    if (initialDeposit?.isValid != true) {
      return Exception('Initial deposit cannot be empty');
    }

    if (initialDeposit?.isPositive != true) {
      return Exception('Initial deposit cannot be negative');
    }

    return content.validate();
  }
}
