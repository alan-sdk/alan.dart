import 'package:alan/alan.dart';

/// Represents the codec that is used to serialize [StdMsg] instances
/// properly during transactions signature processes.
class Codec {
  static bool _defaultInitialized = false;
  static Map<Type, String> _msgTypes = {};

  /// Registers the defaults message types.
  static _registerDefaults() {
    registerMsgType("cosmos-sdk/MsgSend", MsgSend);
    _defaultInitialized = true;
  }

  /// Registers the given [msgType] associating it to the specified
  /// [typeString].
  static registerMsgType(String typeString, Type msgType) {
    _msgTypes[msgType] = typeString;
  }

  /// Serializes the given [msg] into a [Map].
  static Map<String, dynamic> serializeMsg(StdMsg msg) {
    if (!_defaultInitialized) {
      _registerDefaults();
    }

    final type = _msgTypes[msg.runtimeType];
    if (type == null) {
      throw new Exception("${msg.runtimeType} is not registered");
    }

    return {'type': type, 'value': msg.toJson()};
  }
}
