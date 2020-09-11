import 'package:alan/alan.dart';
import 'package:reflectable/mirrors.dart';

/// Represents the codec that is used to serialize [StdMsg] instances
/// properly during transactions signature processes.
class Codec {
  static const _TYPE_KEY = 'type';
  static const _VALUE_KEY = 'value';

  static bool _defaultInitialized = false;
  static final Map<Type, String> _msgTypes = {};

  /// Registers the defaults message types.
  static void _init() {
    // x/bank
    registerMsgType('cosmos-sdk/MsgSend', MsgSend);

    // x/staking
    registerMsgType('cosmos-sdk/MsgCreateValidator', MsgCreateValidator);
    registerMsgType('cosmos-sdk/MsgEditValidator', MsgEditValidator);

    _defaultInitialized = true;
  }

  /// Checks that this codec is properly initialized.
  static void _checkInit() {
    if (!_defaultInitialized) {
      _init();
      _defaultInitialized = true;
    }
  }

  /// Registers the given [msgType] associating it to the specified
  /// [typeString].
  static void registerMsgType(String typeString, Type msgType) {
    _msgTypes[msgType] = typeString;
  }

  /// Serializes the given [msg] into a [Map].
  static Map<String, dynamic> serializeMsg(StdMsg msg) {
    _checkInit();

    final type = _msgTypes[msg.runtimeType];
    if (type == null) {
      throw Exception('{msg.runtimeType} is not registered');
    }

    return {_TYPE_KEY: type, _VALUE_KEY: msg.asJson()};
  }

  static StdMsg deserializeMsg(Map<String, dynamic> json) {
    _checkInit();

    final typeKey = json[_TYPE_KEY];
    final type = _msgTypes.keys.firstWhere(
      (k) => _msgTypes[k] == typeKey,
      orElse: () => null,
    );

    if (type == null) {
      throw Exception('$typeKey is not registered');
    }

    final classMirror = reflector.reflectType(type) as ClassMirror;
    return classMirror.newInstance('fromJson', [json[_VALUE_KEY]]) as StdMsg;
  }
}
