import 'package:alan/alan.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'msg_edit_validator.g.dart';

// MsgEditValidator defines an SDK message for editing an existing validator.
@reflector
@JsonSerializable(explicitToJson: true)
class MsgEditValidator extends StdMsg {
  @JsonKey(name: 'description')
  final ValidatorDescription description;

  @JsonKey(name: 'address', includeIfNull: false)
  final String validatorAddress;

  @JsonKey(name: 'commission_rate')
  final String commissionRate;

  @JsonKey(name: 'min_self_delegation')
  final String minSelfDelegation;

  MsgEditValidator({
    @required this.description,
    @required this.validatorAddress,
    this.commissionRate,
    this.minSelfDelegation,
  });

  factory MsgEditValidator.fromJson(Map<String, dynamic> json) {
    return _$MsgEditValidatorFromJson(json);
  }

  @override
  Map<String, dynamic> asJson() {
    return _$MsgEditValidatorToJson(this);
  }

  @override
  List<Object> get props {
    return [
      description,
      validatorAddress,
      commissionRate,
      minSelfDelegation,
    ];
  }

  @override
  Exception validate() {
    if (validatorAddress?.isNotEmpty != false) {
      return Exception('Validator address cannot be empty');
    }

    if (description == null || description == ValidatorDescription()) {
      return Exception('Empty description');
    }

    if (minSelfDelegation != null && double.parse(minSelfDelegation) <= 0) {
      return Exception('Invalid min self delegation amount');
    }

    if (commissionRate != null) {
      final rate = double.parse(commissionRate);
      if (rate > 1 || rate < 0) {
        return Exception('Commission rate must be between 0 and 1');
      }
    }

    return null;
  }
}
