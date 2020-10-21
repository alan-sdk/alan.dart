import 'package:alan/alan.dart';
import 'package:alan/x/gov/types/messages/export.dart';
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
    registerType('cosmos-sdk/MsgSend', MsgSend);

    // x/staking
    registerType('cosmos-sdk/MsgCreateValidator', MsgCreateValidator);
    registerType('cosmos-sdk/MsgEditValidator', MsgEditValidator);
    registerType('cosmos-sdk/MsgDelegate', MsgDelegate);
    registerType('cosmos-sdk/MsgUndelegate', MsgUndelegate);
    registerType('cosmos-sdk/MsgBeginRedelegate', MsgBeginRedelegate);

    // x/gov
    registerType('cosmos-sdk/MsgSubmitProposal', MsgSubmitProposal);

    registerType('cosmos-sdk/TextProposal', TextProposal);

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
  static void registerType(String typeString, Type msgType) {
    _msgTypes[msgType] = typeString;
  }

  /// Serializes the given [value] into a [Map].
  static Map<String, dynamic> serialize(Serializable value) {
    _checkInit();

    final type = _msgTypes[value.runtimeType];
    if (type == null) {
      throw Exception('${value.runtimeType} is not registered');
    }

    return {_TYPE_KEY: type, _VALUE_KEY: value.asJson()};
  }

  static Serializable deserialize(Map<String, dynamic> json) {
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
    return classMirror.newInstance('fromJson', [json[_VALUE_KEY]])
        as Serializable;
  }
}
