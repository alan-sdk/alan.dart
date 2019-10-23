import 'package:meta/meta.dart';
import 'package:sacco/models/transactions/export.dart';

class StdSignature {
  final StdPublicKey publicKey;
  final String value;

  const StdSignature({
    @required this.value,
    @required this.publicKey,
  })  : assert(value != null),
        assert(publicKey != null);

  Map<String, dynamic> toJson() => {
        'pub_key': publicKey,
        'signature': value,
      };
}
