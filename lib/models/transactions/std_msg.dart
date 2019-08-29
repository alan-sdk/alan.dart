import 'package:meta/meta.dart';

/// [StdMsg] represents a standard message that can be included inside
/// a transaction.
class StdMsg {
  /// String representing the type of the message.
  final String type;

  /// Map containing the real value of the message.
  Map<String, dynamic> value;

  /// Public constructor.
  StdMsg({
    @required this.type,
    @required this.value,
  })  : assert(type != null),
        assert(value != null);

  /// Converts this instance of [StdMsg] into a map that can be later used
  /// to serialize it as a JSON object.
  Map<String, dynamic> toJson() => {
        'type': type,
        'value': value,
      };
}
