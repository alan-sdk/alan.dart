///
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'http.pb.dart' as $1;

class Annotations {
  static final http = $pb.Extension<$1.HttpRule>(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'google.protobuf.MethodOptions', const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'http', 72295728, $pb.PbFieldType.OM, defaultOrMaker: $1.HttpRule.getDefault, subBuilder: $1.HttpRule.create);
  static void registerAllExtensions($pb.ExtensionRegistry registry) {
    registry.add(http);
  }
}

