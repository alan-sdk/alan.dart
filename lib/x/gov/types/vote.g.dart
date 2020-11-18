// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Vote _$VoteFromJson(Map<String, dynamic> json) {
  return Vote(
    proposalId: json['proposal_id'] as String,
    voter: json['voter'] as String,
    option: _$enumDecodeNullable(_$VoteOptionEnumMap, json['option']),
  );
}

Map<String, dynamic> _$VoteToJson(Vote instance) => <String, dynamic>{
      'proposal_id': instance.proposalId,
      'voter': instance.voter,
      'option': _$VoteOptionEnumMap[instance.option],
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

const _$VoteOptionEnumMap = {
  VoteOption.Yes: 'Yes',
  VoteOption.Abstain: 'Abstain',
  VoteOption.No: 'No',
  VoteOption.NoWithVeto: 'NoWithVeto',
};
