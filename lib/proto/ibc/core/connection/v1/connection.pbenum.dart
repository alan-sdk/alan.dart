///
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class State extends $pb.ProtobufEnum {
  static const State STATE_UNINITIALIZED_UNSPECIFIED = State._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'STATE_UNINITIALIZED_UNSPECIFIED');
  static const State STATE_INIT = State._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'STATE_INIT');
  static const State STATE_TRYOPEN = State._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'STATE_TRYOPEN');
  static const State STATE_OPEN = State._(
      3,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'STATE_OPEN');

  static const $core.List<State> values = <State>[
    STATE_UNINITIALIZED_UNSPECIFIED,
    STATE_INIT,
    STATE_TRYOPEN,
    STATE_OPEN,
  ];

  static final $core.Map<$core.int, State> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static State valueOf($core.int value) => _byValue[value];

  const State._($core.int v, $core.String n) : super(v, n);
}
