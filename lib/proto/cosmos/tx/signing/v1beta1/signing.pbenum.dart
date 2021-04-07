///
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class SignMode extends $pb.ProtobufEnum {
  static const SignMode SIGN_MODE_UNSPECIFIED = SignMode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SIGN_MODE_UNSPECIFIED');
  static const SignMode SIGN_MODE_DIRECT = SignMode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SIGN_MODE_DIRECT');
  static const SignMode SIGN_MODE_TEXTUAL = SignMode._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SIGN_MODE_TEXTUAL');
  static const SignMode SIGN_MODE_LEGACY_AMINO_JSON = SignMode._(127, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SIGN_MODE_LEGACY_AMINO_JSON');

  static const $core.List<SignMode> values = <SignMode> [
    SIGN_MODE_UNSPECIFIED,
    SIGN_MODE_DIRECT,
    SIGN_MODE_TEXTUAL,
    SIGN_MODE_LEGACY_AMINO_JSON,
  ];

  static final $core.Map<$core.int, SignMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SignMode? valueOf($core.int value) => _byValue[value];

  const SignMode._($core.int v, $core.String n) : super(v, n);
}

