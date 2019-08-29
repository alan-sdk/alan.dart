import 'package:json_annotation/json_annotation.dart';
import 'package:sacco/models/transactions/export.dart';

part 'std_signature.g.dart';

@JsonSerializable()
class StdSignature {
  @JsonKey(name: 'pub_key')
  final StdPublicKey publicKey;

  @JsonKey(name: 'signature')
  final String value;

  StdSignature({this.value, this.publicKey})
      : assert(value != null),
        assert(publicKey != null);

  factory StdSignature.fromJson(Map<String, dynamic> json) =>
      _$StdSignatureFromJson(json);

  Map<String, dynamic> toJson() => _$StdSignatureToJson(this);
}
