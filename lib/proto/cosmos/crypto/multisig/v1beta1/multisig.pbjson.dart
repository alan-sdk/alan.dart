///
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use multiSignatureDescriptor instead')
const MultiSignature$json = const {
  '1': 'MultiSignature',
  '2': const [
    const {'1': 'signatures', '3': 1, '4': 3, '5': 12, '10': 'signatures'},
  ],
  '7': const {},
};

/// Descriptor for `MultiSignature`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multiSignatureDescriptor = $convert.base64Decode('Cg5NdWx0aVNpZ25hdHVyZRIeCgpzaWduYXR1cmVzGAEgAygMUgpzaWduYXR1cmVzOgTQoR8B');
@$core.Deprecated('Use compactBitArrayDescriptor instead')
const CompactBitArray$json = const {
  '1': 'CompactBitArray',
  '2': const [
    const {'1': 'extra_bits_stored', '3': 1, '4': 1, '5': 13, '10': 'extraBitsStored'},
    const {'1': 'elems', '3': 2, '4': 1, '5': 12, '10': 'elems'},
  ],
  '7': const {},
};

/// Descriptor for `CompactBitArray`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List compactBitArrayDescriptor = $convert.base64Decode('Cg9Db21wYWN0Qml0QXJyYXkSKgoRZXh0cmFfYml0c19zdG9yZWQYASABKA1SD2V4dHJhQml0c1N0b3JlZBIUCgVlbGVtcxgCIAEoDFIFZWxlbXM6BJigHwA=');
