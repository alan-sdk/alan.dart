import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:alan/models/export.dart';

part 'std_tx.g.dart';

/// Contains the information about a standard transaction that can be
/// sent to the chain using a full node.
@JsonSerializable(explicitToJson: true)
class StdTx {
  @JsonKey(name: "msg")
  final List<Map<String, dynamic>> messages;

  @JsonKey(name: "fee")
  final StdFee fee;

  @JsonKey(name: "signatures")
  final List<StdSignature> signatures;

  @JsonKey(name: "memo")
  final String memo;

  StdTx({
    @required this.messages,
    @required this.signatures,
    @required this.fee,
    @required this.memo,
  })  : assert(messages != null),
        assert(signatures == null || signatures.isNotEmpty),
        assert(fee != null),
        assert(memo != null);

  factory StdTx.fromJson(Map<String, dynamic> json) => _$StdTxFromJson(json);

  Map<String, dynamic> toJson() => _$StdTxToJson(this);

  @override
  String toString() {
    final tx = {"type": "cosmos-sdk/StdTx", "value": toJson()};
    return jsonEncode(tx);
  }
}
