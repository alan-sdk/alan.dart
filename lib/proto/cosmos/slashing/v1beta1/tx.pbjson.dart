///
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use msgUnjailDescriptor instead')
const MsgUnjail$json = const {
  '1': 'MsgUnjail',
  '2': const [
    const {'1': 'validator_addr', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'validatorAddr'},
  ],
  '7': const {},
};

/// Descriptor for `MsgUnjail`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUnjailDescriptor = $convert.base64Decode('CglNc2dVbmphaWwSRAoOdmFsaWRhdG9yX2FkZHIYASABKAlCHfLeHw55YW1sOiJhZGRyZXNzIureHwdhZGRyZXNzUg12YWxpZGF0b3JBZGRyOgiIoB8AmKAfAQ==');
@$core.Deprecated('Use msgUnjailResponseDescriptor instead')
const MsgUnjailResponse$json = const {
  '1': 'MsgUnjailResponse',
};

/// Descriptor for `MsgUnjailResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUnjailResponseDescriptor = $convert.base64Decode('ChFNc2dVbmphaWxSZXNwb25zZQ==');
