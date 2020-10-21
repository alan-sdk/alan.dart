import 'package:alan/alan.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'params.g.dart';

/// Represents the deposit params
@JsonSerializable(explicitToJson: true)
class DepositParams extends Equatable {
  @JsonKey(name: 'min_deposit')
  final List<StdCoin> minDeposit;

  @JsonKey(name: 'max_deposit_period')
  final String maxDepositPeriod;

  DepositParams({
    @required this.minDeposit,
    @required this.maxDepositPeriod,
  });

  factory DepositParams.fromJson(Map<String, dynamic> json) {
    return _$DepositParamsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$DepositParamsToJson(this);
  }

  @override
  List<Object> get props {
    return [minDeposit, maxDepositPeriod];
  }
}

/// Represents the tallying params
@JsonSerializable(explicitToJson: true)
class TallyingParams extends Equatable {
  @JsonKey(name: 'quorum')
  final String quorum;

  @JsonKey(name: 'threshold')
  final String threshold;

  @JsonKey(name: 'veto')
  final String veto;

  TallyingParams({
    @required this.quorum,
    @required this.threshold,
    @required this.veto,
  });

  factory TallyingParams.fromJson(Map<String, dynamic> json) {
    return _$TallyingParamsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$TallyingParamsToJson(this);
  }

  @override
  List<Object> get props {
    return [quorum, threshold, veto];
  }
}

/// Represents the voting params
@JsonSerializable(explicitToJson: true)
class VotingParams extends Equatable {
  @JsonKey(name: 'voting_period')
  final String votingPeriod;

  VotingParams({
    @required this.votingPeriod,
  });

  factory VotingParams.fromJson(Map<String, dynamic> json) {
    return _$VotingParamsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$TallyingParamsToJson(this);
  }

  @override
  List<Object> get props {
    return [votingPeriod];
  }
}
