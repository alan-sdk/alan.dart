import 'package:json_annotation/json_annotation.dart';
import 'package:sacco/models/transactions/export.dart';

part 'std_signature.g.dart';

@JsonSerializable()
class StdSignature {
  final String signature;

  @JsonKey(name: 'pub_key')
  final StdPublicKey publicKey;

  StdSignature({this.signature, this.publicKey})
      : assert(signature != null),
        assert(publicKey != null);

  factory StdSignature.fromJson(Map<String, dynamic> json) =>
      _$StdSignatureFromJson(json);

  Map<String, dynamic> toJson() => _$StdSignatureToJson(this);
}
