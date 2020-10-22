// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proposal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Proposal _$ProposalFromJson(Map<String, dynamic> json) {
  return Proposal(
    content: json['content'] == null
        ? null
        : ProposalContent.fromJson(json['content'] as Map<String, dynamic>),
    proposalId: json['id'] as String,
    status:
        _$enumDecodeNullable(_$ProposalStatusEnumMap, json['proposal_status']),
    finalTallyResult: json['final_tally_result'] == null
        ? null
        : TallyResult.fromJson(
            json['final_tally_result'] as Map<String, dynamic>),
    submitTime: json['submit_time'] as String,
    depositEndTime: json['deposit_end_time'] as String,
    totalDeposit: (json['total_deposit'] as List)
        ?.map((e) =>
            e == null ? null : StdCoin.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    votingStartTime: json['voting_start_time'] as String,
    votingEndTime: json['voting_end_time'] as String,
  );
}

Map<String, dynamic> _$ProposalToJson(Proposal instance) => <String, dynamic>{
      'content': instance.content?.toJson(),
      'id': instance.proposalId,
      'proposal_status': _$ProposalStatusEnumMap[instance.status],
      'final_tally_result': instance.finalTallyResult?.toJson(),
      'submit_time': instance.submitTime,
      'deposit_end_time': instance.depositEndTime,
      'total_deposit': instance.totalDeposit?.map((e) => e?.toJson())?.toList(),
      'voting_start_time': instance.votingStartTime,
      'voting_end_time': instance.votingEndTime,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$ProposalStatusEnumMap = {
  ProposalStatus.StatusDepositPeriod: 'DepositPeriod',
  ProposalStatus.StatusVotingPeriod: 'VotingPeriod',
  ProposalStatus.StatusPassed: 'Passed',
  ProposalStatus.StatusRejected: 'Rejected',
  ProposalStatus.StatusFailed: 'Failed',
};
