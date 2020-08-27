import 'package:alan/alan.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'std_signature_message.g.dart';

/// Represents the object that needs to be signed when performing a transaction.
@JsonSerializable(explicitToJson: true)
class StdSignatureMessage extends Equatable {
  @JsonKey(name: 'chain_id')
  final String chainId;

  @JsonKey(name: 'account_number')
  final String accountNumber;

  @JsonKey(name: 'sequence')
  final String sequence;

  @JsonKey(name: 'memo')
  final String memo;

  @JsonKey(name: 'fee')
  final Map<String, dynamic> fee;

  @JsonKey(name: 'msgs')
  final List<StdMsg> msgs;

  const StdSignatureMessage({
    @required this.chainId,
    @required this.accountNumber,
    @required this.sequence,
    @required this.memo,
    @required this.fee,
    @required this.msgs,
  })  : assert(chainId != null),
        assert(accountNumber != null),
        assert(sequence != null),
        assert(memo != null),
        assert(fee != null),
        assert(msgs != null);

  @override
  List<Object> get props => [chainId, accountNumber, sequence, memo, fee, msgs];

  factory StdSignatureMessage.fromJson(Map<String, dynamic> json) =>
      _$StdSignatureMessageFromJson(json);

  Map<String, dynamic> toJson() => _$StdSignatureMessageToJson(this);
}
