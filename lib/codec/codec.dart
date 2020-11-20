import 'package:alan/alan.dart';
import 'package:alan/proto/cosmos/bank/v1beta1/export.dart' as bank;
import 'package:alan/proto/cosmos/gov/v1beta1/export.dart' as gov;
import 'package:alan/proto/cosmos/staking/v1beta1/export.dart' as staking;
import 'package:protobuf/protobuf.dart';
import 'package:reflectable/mirrors.dart';
import 'package:reflectable/reflectable.dart';

class Reflector extends Reflectable {
  const Reflector() : super(newInstanceCapability, subtypeQuantifyCapability);
}

const reflector = Reflector();

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
    registerType('cosmos-sdk/MsgSend', bank.MsgSend);

    // x/staking
    registerType('cosmos-sdk/MsgCreateValidator', staking.MsgCreateValidator);
    registerType('cosmos-sdk/MsgEditValidator', staking.MsgEditValidator);
    registerType('cosmos-sdk/MsgDelegate', staking.MsgDelegate);
    registerType('cosmos-sdk/MsgUndelegate', staking.MsgUndelegate);
    registerType('cosmos-sdk/MsgBeginRedelegate', staking.MsgBeginRedelegate);

    // x/gov
    registerType('cosmos-sdk/MsgSubmitProposal', gov.MsgSubmitProposal);
    registerType('cosmos-sdk/MsgDeposit', gov.MsgDeposit);
    registerType('cosmos-sdk/MsgVote', gov.MsgVote);
    registerType('cosmos-sdk/TextProposal', gov.TextProposal);

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
  static Any serialize(GeneratedMessage value) {
    _checkInit();

    final type = _msgTypes[value.runtimeType];
    if (type == null) {
      throw Exception('${value.runtimeType} is not registered');
    }

    return Any.pack(value, typeUrlPrefix: '/${type}');
  }

  static GeneratedMessage deserialize(Any value) {
    _checkInit();

    final typeKey = value.typeUrl;
    final type = _msgTypes.keys.firstWhere(
      (k) => _msgTypes[k] == typeKey,
      orElse: () => null,
    );

    if (type == null) {
      throw Exception('$typeKey is not registered');
    }

    final classMirror = reflector.reflectType(type) as ClassMirror;
    return classMirror.newInstance('fromBuffer', [value.value])
        as GeneratedMessage;
  }
}
