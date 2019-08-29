import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:sacco/models/transactions/export.dart';

class StdTx {
  final List<StdMsg> messages;
  final List<StdSignature> signatures;
  final StdFee fee;
  final String memo;

  StdTx({
    @required this.messages,
    @required this.signatures,
    @required this.fee,
    @required this.memo,
  })  : assert(messages != null),
        assert(signatures == null || signatures.isNotEmpty),
        assert(fee != null);

  Map<String, dynamic> toJson() => {
        'msg': this.messages.map((message) => message.toJson()).toList(),
        'fee': this.fee.toJson(),
        'signatures':
            this.signatures?.map((signature) => signature.toJson())?.toList(),
        'memo': this.memo,
      };

  @override
  String toString() {
    final tx = {"type": "cosmos-sdk/StdTx", "value": toJson()};
    return jsonEncode(tx);
  }
}
