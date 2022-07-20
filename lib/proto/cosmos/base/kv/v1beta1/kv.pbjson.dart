///
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use pairsDescriptor instead')
const Pairs$json = const {
  '1': 'Pairs',
  '2': const [
    const {'1': 'pairs', '3': 1, '4': 3, '5': 11, '6': '.cosmos.base.kv.v1beta1.Pair', '8': const {}, '10': 'pairs'},
  ],
};

/// Descriptor for `Pairs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pairsDescriptor = $convert.base64Decode('CgVQYWlycxI4CgVwYWlycxgBIAMoCzIcLmNvc21vcy5iYXNlLmt2LnYxYmV0YTEuUGFpckIEyN4fAFIFcGFpcnM=');
@$core.Deprecated('Use pairDescriptor instead')
const Pair$json = const {
  '1': 'Pair',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 12, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
};

/// Descriptor for `Pair`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pairDescriptor = $convert.base64Decode('CgRQYWlyEhAKA2tleRgBIAEoDFIDa2V5EhQKBXZhbHVlGAIgASgMUgV2YWx1ZQ==');
