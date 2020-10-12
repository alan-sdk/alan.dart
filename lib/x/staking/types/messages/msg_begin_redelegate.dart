import 'package:alan/alan.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'msg_begin_redelegate.g.dart';

/// Represents the message used to begin the re-delegation of a specific
/// amount of tokens from one validator to another.
@reflector
@JsonSerializable(explicitToJson: true)
class MsgBeginRedelegate extends StdMsg {
  @JsonKey(name: 'delegator_address')
  final String delegatorAddress;

  @JsonKey(name: 'validator_src_address')
  final String validatorSourceAddress;

  @JsonKey(name: 'validator_dst_address')
  final String validatorDestinationAddress;

  @JsonKey(name: 'amount')
  final StdCoin amount;

  MsgBeginRedelegate({
    @required this.delegatorAddress,
    @required this.validatorSourceAddress,
    @required this.validatorDestinationAddress,
    @required this.amount,
  });

  factory MsgBeginRedelegate.fromJson(Map<String, dynamic> json) {
    return _$MsgBeginRedelegateFromJson(json);
  }

  @override
  Map<String, dynamic> asJson() {
    return _$MsgBeginRedelegateToJson(this);
  }

  @override
  List<Object> get props {
    return [
      delegatorAddress,
      validatorDestinationAddress,
      validatorSourceAddress,
      amount,
    ];
  }

  @override
  Exception validate() {
    if (delegatorAddress?.isNotEmpty != false) {
      return Exception('Delegator address cannot be empty');
    }

    if (validatorSourceAddress?.isNotEmpty != false) {
      return Exception('Validator source address cannot be empty');
    }

    if (validatorDestinationAddress?.isNotEmpty != false) {
      return Exception('Validator destination address cannot be empty');
    }

    if (amount?.isPositive != false) {
      return Exception('Amount needs to be positive');
    }

    return null;
  }
}
