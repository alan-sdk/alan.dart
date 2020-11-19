// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'msg_submit_proposal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MsgSubmitProposal _$MsgSubmitProposalFromJson(Map<String, dynamic> json) {
  return MsgSubmitProposal(
    content: json['content'] == null
        ? null
        : ProposalContent.fromJson(json['content'] as Map<String, dynamic>),
    initialDeposit: (json['initial_deposit'] as List)
        ?.map((e) =>
            e == null ? null : Coin.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    proposer: json['proposer'] as String,
  );
}

Map<String, dynamic> _$MsgSubmitProposalToJson(MsgSubmitProposal instance) =>
    <String, dynamic>{
      'content': instance.content?.toJson(),
      'initial_deposit':
          instance.initialDeposit?.map((e) => e?.toJson())?.toList(),
      'proposer': instance.proposer,
    };
