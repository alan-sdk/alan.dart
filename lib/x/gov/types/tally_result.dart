import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'tally_result.g.dart';

/// Defines a standard tally for a proposal
@JsonSerializable(explicitToJson: true)
class TallyResult extends Equatable {
  @JsonKey(name: 'yes')
  final String yes;
  @JsonKey(name: 'abstain')
  final String abstain;
  @JsonKey(name: 'no')
  final String no;
  @JsonKey(name: 'no_with_veto')
  final String noWithVeto;

  TallyResult({
    @required this.yes,
    @required this.abstain,
    @required this.no,
    @required this.noWithVeto,
  });

  factory TallyResult.fromJson(Map<String, dynamic> json) {
    return _$TallyResultFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$TallyResultToJson(this);
  }

  @override
  List<Object> get props {
    return [yes, abstain, no, noWithVeto];
  }
}
