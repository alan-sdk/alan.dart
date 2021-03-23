///
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'http.pb.dart' as $0;

class Annotations {
  static final http = $pb.Extension<$0.HttpRule>(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'google.protobuf.MethodOptions', const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'http', 72295728, $pb.PbFieldType.OM, defaultOrMaker: $0.HttpRule.getDefault, subBuilder: $0.HttpRule.create);
  static void registerAllExtensions($pb.ExtensionRegistry registry) {
    registry.add(http);
  }
}

