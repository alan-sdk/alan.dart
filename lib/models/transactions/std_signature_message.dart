import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'std_signature_message.g.dart';

@JsonSerializable()
class StdSignatureMessage {
  @JsonKey(name: 'chain_id')
  final String chainId;

  @JsonKey(name: 'account_number')
  final String accountNumber;

  final String sequence;
  final String memo;
  final Map<String, dynamic> fee;
  final List<Map<String, dynamic>> msgs;

  StdSignatureMessage({
    @required this.chainId,
    @required this.accountNumber,
    @required this.sequence,
    @required this.memo,
    @required this.fee,
    @required this.msgs,
  })  : assert(chainId != null),
        assert(accountNumber != null),
        assert(sequence != null),
        assert(msgs != null);

  factory StdSignatureMessage.fromJson(Map<String, dynamic> json) =>
      _$StdSignatureMessageFromJson(json);

  Map<String, dynamic> toJson() => _$StdSignatureMessageToJson(this);
}
