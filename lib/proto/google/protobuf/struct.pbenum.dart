///
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class NullValue extends $pb.ProtobufEnum {
  static const NullValue NULL_VALUE = NullValue._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'NULL_VALUE');

  static const $core.List<NullValue> values = <NullValue>[
    NULL_VALUE,
  ];

  static final $core.Map<$core.int, NullValue> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static NullValue valueOf($core.int value) => _byValue[value];

  const NullValue._($core.int v, $core.String n) : super(v, n);
}
