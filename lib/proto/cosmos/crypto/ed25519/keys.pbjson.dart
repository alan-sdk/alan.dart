///
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use pubKeyDescriptor instead')
const PubKey$json = const {
  '1': 'PubKey',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 12, '8': const {}, '10': 'key'},
  ],
  '7': const {},
};

/// Descriptor for `PubKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pubKeyDescriptor = $convert.base64Decode('CgZQdWJLZXkSLgoDa2V5GAEgASgMQhz63h8YY3J5cHRvL2VkMjU1MTkuUHVibGljS2V5UgNrZXk6BJigHwA=');
@$core.Deprecated('Use privKeyDescriptor instead')
const PrivKey$json = const {
  '1': 'PrivKey',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 12, '8': const {}, '10': 'key'},
  ],
};

/// Descriptor for `PrivKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List privKeyDescriptor = $convert.base64Decode('CgdQcml2S2V5Ei8KA2tleRgBIAEoDEId+t4fGWNyeXB0by9lZDI1NTE5LlByaXZhdGVLZXlSA2tleQ==');
