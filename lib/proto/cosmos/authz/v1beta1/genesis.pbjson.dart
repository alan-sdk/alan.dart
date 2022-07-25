///
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use genesisStateDescriptor instead')
const GenesisState$json = const {
  '1': 'GenesisState',
  '2': const [
    const {'1': 'authorization', '3': 1, '4': 3, '5': 11, '6': '.cosmos.authz.v1beta1.GrantAuthorization', '8': const {}, '10': 'authorization'},
  ],
};

/// Descriptor for `GenesisState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genesisStateDescriptor = $convert.base64Decode('CgxHZW5lc2lzU3RhdGUSVAoNYXV0aG9yaXphdGlvbhgBIAMoCzIoLmNvc21vcy5hdXRoei52MWJldGExLkdyYW50QXV0aG9yaXphdGlvbkIEyN4fAFINYXV0aG9yaXphdGlvbg==');
