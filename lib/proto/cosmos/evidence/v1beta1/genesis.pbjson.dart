///
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use genesisStateDescriptor instead')
const GenesisState$json = const {
  '1': 'GenesisState',
  '2': const [
    const {'1': 'evidence', '3': 1, '4': 3, '5': 11, '6': '.google.protobuf.Any', '10': 'evidence'},
  ],
};

/// Descriptor for `GenesisState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genesisStateDescriptor = $convert.base64Decode('CgxHZW5lc2lzU3RhdGUSMAoIZXZpZGVuY2UYASADKAsyFC5nb29nbGUucHJvdG9idWYuQW55UghldmlkZW5jZQ==');
