import 'package:meta/meta.dart';

class StdPublicKey {
  final String type;
  final String value;

  const StdPublicKey({
    @required this.type,
    @required this.value,
  })  : assert(type != null),
        assert(value != null);

  Map<String, dynamic> toJson() => {
        'type': type,
        'value': value,
      };
}
