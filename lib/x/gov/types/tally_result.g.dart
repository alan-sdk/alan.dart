// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tally_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TallyResult _$TallyResultFromJson(Map<String, dynamic> json) {
  return TallyResult(
    yes: json['yes'] as String,
    abstain: json['abstain'] as String,
    no: json['no'] as String,
    noWithVeto: json['no_with_veto'] as String,
  );
}

Map<String, dynamic> _$TallyResultToJson(TallyResult instance) =>
    <String, dynamic>{
      'yes': instance.yes,
      'abstain': instance.abstain,
      'no': instance.no,
      'no_with_veto': instance.noWithVeto,
    };
