import 'package:alan/alan.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'deposit.g.dart';

/// Defines an amount deposited by an account address to an active proposal
@JsonSerializable(explicitToJson: true)
class Deposit extends Equatable {
  @JsonKey(name: 'proposal_id')
  final String proposalId;

  @JsonKey(name: 'depositor')
  final String depositor;

  @JsonKey(name: 'amount')
  final List<StdCoin> amount;

  Deposit({
    @required this.proposalId,
    @required this.depositor,
    @required this.amount,
  });

  factory Deposit.fromJson(Map<String, dynamic> json) {
    return _$DepositFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$DepositToJson(this);
  }

  @override
  List<Object> get props {
    return [proposalId, depositor, amount];
  }
}
