///
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use eventGrantDescriptor instead')
const EventGrant$json = const {
  '1': 'EventGrant',
  '2': const [
    const {'1': 'msg_type_url', '3': 2, '4': 1, '5': 9, '10': 'msgTypeUrl'},
    const {'1': 'granter', '3': 3, '4': 1, '5': 9, '10': 'granter'},
    const {'1': 'grantee', '3': 4, '4': 1, '5': 9, '10': 'grantee'},
  ],
};

/// Descriptor for `EventGrant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventGrantDescriptor = $convert.base64Decode('CgpFdmVudEdyYW50EiAKDG1zZ190eXBlX3VybBgCIAEoCVIKbXNnVHlwZVVybBIYCgdncmFudGVyGAMgASgJUgdncmFudGVyEhgKB2dyYW50ZWUYBCABKAlSB2dyYW50ZWU=');
@$core.Deprecated('Use eventRevokeDescriptor instead')
const EventRevoke$json = const {
  '1': 'EventRevoke',
  '2': const [
    const {'1': 'msg_type_url', '3': 2, '4': 1, '5': 9, '10': 'msgTypeUrl'},
    const {'1': 'granter', '3': 3, '4': 1, '5': 9, '10': 'granter'},
    const {'1': 'grantee', '3': 4, '4': 1, '5': 9, '10': 'grantee'},
  ],
};

/// Descriptor for `EventRevoke`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventRevokeDescriptor = $convert.base64Decode('CgtFdmVudFJldm9rZRIgCgxtc2dfdHlwZV91cmwYAiABKAlSCm1zZ1R5cGVVcmwSGAoHZ3JhbnRlchgDIAEoCVIHZ3JhbnRlchIYCgdncmFudGVlGAQgASgJUgdncmFudGVl');
