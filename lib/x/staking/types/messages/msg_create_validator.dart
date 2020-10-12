import 'package:alan/alan.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'msg_create_validator.g.dart';

/// Defines an SDK message for creating a new validator.
@reflector
@JsonSerializable(explicitToJson: true)
class MsgCreateValidator extends StdMsg {
  @JsonKey(name: 'description')
  final ValidatorDescription description;

  @JsonKey(name: 'commission')
  final CommissionRates commission;

  @JsonKey(name: 'min_self_delegation')
  final String minSelfDelegation;

  @JsonKey(name: 'delegator_address')
  final String delegatorAddress;

  @JsonKey(name: 'validator_address')
  final String validatorAddress;

  @JsonKey(name: 'pubkey', includeIfNull: false)
  final String publicKey;

  @JsonKey(name: 'value')
  final StdCoin value;

  MsgCreateValidator({
    @required this.description,
    @required this.commission,
    @required this.minSelfDelegation,
    @required this.delegatorAddress,
    @required this.validatorAddress,
    this.publicKey,
    @required this.value,
  });

  factory MsgCreateValidator.fromJson(Map<String, dynamic> json) {
    return _$MsgCreateValidatorFromJson(json);
  }

  @override
  Map<String, dynamic> asJson() {
    return _$MsgCreateValidatorToJson(this);
  }

  @override
  List<Object> get props {
    return [
      description,
      commission,
      minSelfDelegation,
      delegatorAddress,
      validatorAddress,
      publicKey,
      value,
    ];
  }

  @override
  Exception validate() {
    if (delegatorAddress?.isNotEmpty != false) {
      return Exception('Empty delegator address');
    }

    if (validatorAddress?.isNotEmpty != false) {
      return Exception('Empty validator address');
    }

    if (publicKey?.isNotEmpty != false) {
      return Exception('Empty public key');
    }

    if (value?.isValid != true || value?.isPositive != true) {
      return Exception('Bad delegation amount');
    }

    if (description == ValidatorDescription()) {
      return Exception('empty description');
    }

    if (double.parse(minSelfDelegation) < 0) {
      return Exception('Invalid min self delegation');
    }

    if (double.parse(value.amount) < double.parse(minSelfDelegation)) {
      return Exception('Amount is lower than min self delegation');
    }

    return null;
  }
}
