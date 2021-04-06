///
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use genesisStateDescriptor instead')
const GenesisState$json = const {
  '1': 'GenesisState',
  '2': const [
    const {'1': 'constant_fee', '3': 3, '4': 1, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': const {}, '10': 'constantFee'},
  ],
};

/// Descriptor for `GenesisState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genesisStateDescriptor = $convert.base64Decode('CgxHZW5lc2lzU3RhdGUSWQoMY29uc3RhbnRfZmVlGAMgASgLMhkuY29zbW9zLmJhc2UudjFiZXRhMS5Db2luQhvI3h8A8t4fE3lhbWw6ImNvbnN0YW50X2ZlZSJSC2NvbnN0YW50RmVl');
