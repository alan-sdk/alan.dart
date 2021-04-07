///
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use genesisStateDescriptor instead')
const GenesisState$json = const {
  '1': 'GenesisState',
  '2': const [
    const {'1': 'minter', '3': 1, '4': 1, '5': 11, '6': '.cosmos.mint.v1beta1.Minter', '8': const {}, '10': 'minter'},
    const {'1': 'params', '3': 2, '4': 1, '5': 11, '6': '.cosmos.mint.v1beta1.Params', '8': const {}, '10': 'params'},
  ],
};

/// Descriptor for `GenesisState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genesisStateDescriptor = $convert.base64Decode('CgxHZW5lc2lzU3RhdGUSOQoGbWludGVyGAEgASgLMhsuY29zbW9zLm1pbnQudjFiZXRhMS5NaW50ZXJCBMjeHwBSBm1pbnRlchI5CgZwYXJhbXMYAiABKAsyGy5jb3Ntb3MubWludC52MWJldGExLlBhcmFtc0IEyN4fAFIGcGFyYW1z');
