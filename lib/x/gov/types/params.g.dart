// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DepositParams _$DepositParamsFromJson(Map<String, dynamic> json) {
  return DepositParams(
    minDeposit: (json['min_deposit'] as List)
        ?.map((e) =>
            e == null ? null : Coin.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    maxDepositPeriod: json['max_deposit_period'] as String,
  );
}

Map<String, dynamic> _$DepositParamsToJson(DepositParams instance) =>
    <String, dynamic>{
      'min_deposit': instance.minDeposit?.map((e) => e?.toJson())?.toList(),
      'max_deposit_period': instance.maxDepositPeriod,
    };

TallyingParams _$TallyingParamsFromJson(Map<String, dynamic> json) {
  return TallyingParams(
    quorum: json['quorum'] as String,
    threshold: json['threshold'] as String,
    veto: json['veto'] as String,
  );
}

Map<String, dynamic> _$TallyingParamsToJson(TallyingParams instance) =>
    <String, dynamic>{
      'quorum': instance.quorum,
      'threshold': instance.threshold,
      'veto': instance.veto,
    };

VotingParams _$VotingParamsFromJson(Map<String, dynamic> json) {
  return VotingParams(
    votingPeriod: json['voting_period'] as String,
  );
}

Map<String, dynamic> _$VotingParamsToJson(VotingParams instance) =>
    <String, dynamic>{
      'voting_period': instance.votingPeriod,
    };
