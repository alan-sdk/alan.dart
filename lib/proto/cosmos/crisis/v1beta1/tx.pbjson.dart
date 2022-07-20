///
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use msgVerifyInvariantDescriptor instead')
const MsgVerifyInvariant$json = const {
  '1': 'MsgVerifyInvariant',
  '2': const [
    const {'1': 'sender', '3': 1, '4': 1, '5': 9, '10': 'sender'},
    const {'1': 'invariant_module_name', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'invariantModuleName'},
    const {'1': 'invariant_route', '3': 3, '4': 1, '5': 9, '8': const {}, '10': 'invariantRoute'},
  ],
  '7': const {},
};

/// Descriptor for `MsgVerifyInvariant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgVerifyInvariantDescriptor = $convert.base64Decode('ChJNc2dWZXJpZnlJbnZhcmlhbnQSFgoGc2VuZGVyGAEgASgJUgZzZW5kZXISVAoVaW52YXJpYW50X21vZHVsZV9uYW1lGAIgASgJQiDy3h8ceWFtbDoiaW52YXJpYW50X21vZHVsZV9uYW1lIlITaW52YXJpYW50TW9kdWxlTmFtZRJDCg9pbnZhcmlhbnRfcm91dGUYAyABKAlCGvLeHxZ5YW1sOiJpbnZhcmlhbnRfcm91dGUiUg5pbnZhcmlhbnRSb3V0ZToI6KAfAIigHwA=');
@$core.Deprecated('Use msgVerifyInvariantResponseDescriptor instead')
const MsgVerifyInvariantResponse$json = const {
  '1': 'MsgVerifyInvariantResponse',
};

/// Descriptor for `MsgVerifyInvariantResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgVerifyInvariantResponseDescriptor = $convert.base64Decode('ChpNc2dWZXJpZnlJbnZhcmlhbnRSZXNwb25zZQ==');
