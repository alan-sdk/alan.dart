import 'package:alan/models/export.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'std_signature.g.dart';

/// Contains the data about a transaction signature that has been generated
/// and is included inside the transaction itself.
@JsonSerializable(ignoreUnannotated: true)
class StdSignature extends Equatable {
  @JsonKey(name: 'pub_key')
  final StdPublicKey publicKey;

  @JsonKey(name: 'signature')
  final String value;

  const StdSignature({
    @required this.value,
    @required this.publicKey,
  })  : assert(value != null),
        assert(publicKey != null);

  @override
  List<Object> get props => [publicKey, value];

  factory StdSignature.fromJson(Map<String, dynamic> json) =>
      _$StdSignatureFromJson(json);

  Map<String, dynamic> toJson() => _$StdSignatureToJson(this);
}
