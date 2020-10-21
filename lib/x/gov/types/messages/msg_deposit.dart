import 'package:alan/alan.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'msg_deposit.g.dart';

/// Defines a message to submit a deposit to an existing proposal.
@reflector
@JsonSerializable(explicitToJson: true)
class MsgDeposit extends StdMsg {
  @JsonKey(name: 'proposal_id')
  final int proposalId;

  @JsonKey(name: 'depositor')
  final String depositor;

  @JsonKey(name: 'amount')
  final List<StdCoin> amount;

  MsgDeposit({
    @required this.proposalId,
    @required this.depositor,
    @required this.amount,
  });

  @override
  Map<String, dynamic> asJson() {
    return _$MsgDepositToJson(this);
  }

  @override
  List<Object> get props {
    return [proposalId, depositor, amount];
  }

  @override
  Exception validate() {
    if (depositor?.isEmpty != false) {
      return Exception('Depositor address cannot be null of empty');
    }

    if (amount == null || !amount.isValid) {
      return Exception('Amount needs to be valid');
    }

    if (!amount.isPositive) {
      return Exception('Amount cannot be empty');
    }

    return null;
  }
}
