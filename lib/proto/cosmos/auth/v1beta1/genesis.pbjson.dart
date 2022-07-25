///
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use genesisStateDescriptor instead')
const GenesisState$json = const {
  '1': 'GenesisState',
  '2': const [
    const {'1': 'params', '3': 1, '4': 1, '5': 11, '6': '.cosmos.auth.v1beta1.Params', '8': const {}, '10': 'params'},
    const {'1': 'accounts', '3': 2, '4': 3, '5': 11, '6': '.google.protobuf.Any', '10': 'accounts'},
  ],
};

/// Descriptor for `GenesisState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genesisStateDescriptor = $convert.base64Decode('CgxHZW5lc2lzU3RhdGUSOQoGcGFyYW1zGAEgASgLMhsuY29zbW9zLmF1dGgudjFiZXRhMS5QYXJhbXNCBMjeHwBSBnBhcmFtcxIwCghhY2NvdW50cxgCIAMoCzIULmdvb2dsZS5wcm90b2J1Zi5BbnlSCGFjY291bnRz');
