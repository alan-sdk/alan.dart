import 'package:alan/alan.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'msg_delegate.g.dart';

/// Represents the message used to delegate a given amount to a validator.
@reflector
@JsonSerializable(explicitToJson: true)
class MsgDelegate extends StdMsg {
  @JsonKey(name: 'delegator_address')
  final String delegatorAddress;

  @JsonKey(name: 'validator_address')
  final String validatorAddress;

  @JsonKey(name: 'amount')
  final StdCoin amount;

  MsgDelegate({
    @required this.delegatorAddress,
    @required this.validatorAddress,
    @required this.amount,
  });

  factory MsgDelegate.fromJson(Map<String, dynamic> json) {
    return _$MsgDelegateFromJson(json);
  }

  @override
  Map<String, dynamic> asJson() {
    return _$MsgDelegateToJson(this);
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
    if (delegatorAddress?.isNotEmpty != false) {
      return Exception('Delegator address cannot be empty');
    }

    if (validatorAddress?.isNotEmpty != false) {
      return Exception('Validator address cannot be empty');
    }

    if (amount?.isPositive != false) {
      return Exception('Amount needs to be positive');
    }

    return null;
  }
}
