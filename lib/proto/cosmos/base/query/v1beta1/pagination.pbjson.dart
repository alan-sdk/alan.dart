///
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use pageRequestDescriptor instead')
const PageRequest$json = const {
  '1': 'PageRequest',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 12, '10': 'key'},
    const {'1': 'offset', '3': 2, '4': 1, '5': 4, '10': 'offset'},
    const {'1': 'limit', '3': 3, '4': 1, '5': 4, '10': 'limit'},
    const {'1': 'count_total', '3': 4, '4': 1, '5': 8, '10': 'countTotal'},
  ],
};

/// Descriptor for `PageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pageRequestDescriptor = $convert.base64Decode('CgtQYWdlUmVxdWVzdBIQCgNrZXkYASABKAxSA2tleRIWCgZvZmZzZXQYAiABKARSBm9mZnNldBIUCgVsaW1pdBgDIAEoBFIFbGltaXQSHwoLY291bnRfdG90YWwYBCABKAhSCmNvdW50VG90YWw=');
@$core.Deprecated('Use pageResponseDescriptor instead')
const PageResponse$json = const {
  '1': 'PageResponse',
  '2': const [
    const {'1': 'next_key', '3': 1, '4': 1, '5': 12, '10': 'nextKey'},
    const {'1': 'total', '3': 2, '4': 1, '5': 4, '10': 'total'},
  ],
};

/// Descriptor for `PageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pageResponseDescriptor = $convert.base64Decode('CgxQYWdlUmVzcG9uc2USGQoIbmV4dF9rZXkYASABKAxSB25leHRLZXkSFAoFdG90YWwYAiABKARSBXRvdGFs');
