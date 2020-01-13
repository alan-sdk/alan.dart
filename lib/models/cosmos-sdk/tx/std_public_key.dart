import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'std_public_key.g.dart';

/// Contains the data of a public key that has been used to sign a transaction
/// and is included inside it to prove authenticity.
@JsonSerializable(explicitToJson: true)
class StdPublicKey {
  @JsonKey(name: "type")
  final String type;

  @JsonKey(name: "value")
  final String value;

  const StdPublicKey({
    @required this.type,
    @required this.value,
  })  : assert(type != null),
        assert(value != null);

  factory StdPublicKey.fromJson(Map<String, dynamic> json) =>
      _$StdPublicKeyFromJson(json);

  Map<String, dynamic> toJson() => _$StdPublicKeyToJson(this);
}
