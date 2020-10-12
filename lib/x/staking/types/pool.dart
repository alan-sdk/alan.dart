import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'pool.g.dart';

// Tracks bonded and not-bonded token supply of the bond denomination.
@JsonSerializable(explicitToJson: true)
class StakingPool extends Equatable {
  @JsonKey(name: 'not_bonded_tokens')
  final String notBondedTokens;

  @JsonKey(name: 'bonded_tokens')
  final String bondedTokens;

  StakingPool({@required this.notBondedTokens, @required this.bondedTokens});

  factory StakingPool.fromJson(Map<String, dynamic> json) {
    return _$StakingPoolFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$StakingPoolToJson(this);
  }

  @override
  List<Object> get props {
    return [
      notBondedTokens,
      bondedTokens,
    ];
  }
}
