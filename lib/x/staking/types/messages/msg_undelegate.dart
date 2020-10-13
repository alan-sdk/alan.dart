import 'package:alan/alan.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'msg_undelegate.g.dart';

/// Defines the message used to unbong a specific amount from a validator.
@reflector
@JsonSerializable(explicitToJson: true)
class MsgUndelegate extends StdMsg {
  @JsonKey(name: 'delegator_address')
  final String delegatorAddress;

  @JsonKey(name: 'validator_address')
  final String validatorAddress;

  @JsonKey(name: 'amount')
  final StdCoin amount;

  MsgUndelegate({
    @required this.delegatorAddress,
    @required this.validatorAddress,
    @required this.amount,
  });

  factory MsgUndelegate.fromJson(Map<String, dynamic> json) {
    return _$MsgUndelegateFromJson(json);
  }

  @override
  Map<String, dynamic> asJson() {
    return _$MsgUndelegateToJson(this);
  }

  @override
  List<Object> get props {
    return [
      delegatorAddress,
      validatorAddress,
      amount,
    ];
  }

  @override
  Exception validate() {
    if (delegatorAddress?.isNotEmpty != true) {
      return Exception('Delegator address cannot be empty');
    }

    if (validatorAddress?.isNotEmpty != true) {
      return Exception('Validator address cannot be empty');
    }

    if (amount?.isPositive != true) {
      return Exception('Amount needs to be positive');
    }

    return null;
  }
}
