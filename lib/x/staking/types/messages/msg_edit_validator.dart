import 'package:alan/alan.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'msg_edit_validator.g.dart';

// MsgEditValidator defines an SDK message for editing an existing validator.
@reflector
@JsonSerializable(explicitToJson: true)
class MsgEditValidator extends StdMsg {
  @JsonKey(name: 'description')
  final Description description;

  @JsonKey(name: 'validator_address', includeIfNull: false)
  final String validatorAddress;

  @JsonKey(name: 'commission', includeIfNull: false)
  final CommissionRates commission;

  @JsonKey(name: 'min_self_delegation', includeIfNull: false)
  final String minSelfDelegation;

  MsgEditValidator({
    @required this.description,
    @required this.validatorAddress,
    this.commission,
    this.minSelfDelegation,
  });

  factory MsgEditValidator.fromJson(Map<String, dynamic> json) {
    return _$MsgEditValidatorFromJson(json);
  }

  @override
  Map<String, dynamic> asJson() {
    return _$MsgEditValidatorToJson(json);
  }

  @override
  List<Object> get props {
    return [
      description,
      validatorAddress,
      commission,
      minSelfDelegation,
    ];
  }

  @override
  Exception validate() {
    if (validatorAddress?.isNotEmpty != false) {
      return Exception('Validator address cannot be empty');
    }

    if (description == null || description == Description()) {
      return Exception('Empty description');
    }

    if (minSelfDelegation != null && double.parse(minSelfDelegation) <= 0) {
      return Exception('Invalid min self delegation amount');
    }

    if (commission != null) {
      final rate = double.parse(commission.rate);
      if (rate > 1 || rate < 0) {
        return Exception('Commission rate must be between 0 and 1');
      }
    }

    return null;
  }
}
