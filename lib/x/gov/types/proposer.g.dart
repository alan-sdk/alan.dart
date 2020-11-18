// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proposer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Proposer _$ProposerFromJson(Map<String, dynamic> json) {
  return Proposer(
    proposalId: json['proposal_id'] as String,
    proposer: json['proposer'] as String,
  );
}

Map<String, dynamic> _$ProposerToJson(Proposer instance) => <String, dynamic>{
      'proposal_id': instance.proposalId,
      'proposer': instance.proposer,
    };
