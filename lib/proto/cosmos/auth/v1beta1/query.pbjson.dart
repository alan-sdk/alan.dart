///
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use queryAccountRequestDescriptor instead')
const QueryAccountRequest$json = const {
  '1': 'QueryAccountRequest',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
  ],
  '7': const {},
};

/// Descriptor for `QueryAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAccountRequestDescriptor = $convert.base64Decode('ChNRdWVyeUFjY291bnRSZXF1ZXN0EhgKB2FkZHJlc3MYASABKAlSB2FkZHJlc3M6COigHwCIoB8A');
@$core.Deprecated('Use queryAccountResponseDescriptor instead')
const QueryAccountResponse$json = const {
  '1': 'QueryAccountResponse',
  '2': const [
    const {'1': 'account', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Any', '8': const {}, '10': 'account'},
  ],
};

/// Descriptor for `QueryAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAccountResponseDescriptor = $convert.base64Decode('ChRRdWVyeUFjY291bnRSZXNwb25zZRI8CgdhY2NvdW50GAEgASgLMhQuZ29vZ2xlLnByb3RvYnVmLkFueUIMyrQtCEFjY291bnRJUgdhY2NvdW50');
@$core.Deprecated('Use queryParamsRequestDescriptor instead')
const QueryParamsRequest$json = const {
  '1': 'QueryParamsRequest',
};

/// Descriptor for `QueryParamsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryParamsRequestDescriptor = $convert.base64Decode('ChJRdWVyeVBhcmFtc1JlcXVlc3Q=');
@$core.Deprecated('Use queryParamsResponseDescriptor instead')
const QueryParamsResponse$json = const {
  '1': 'QueryParamsResponse',
  '2': const [
    const {'1': 'params', '3': 1, '4': 1, '5': 11, '6': '.cosmos.auth.v1beta1.Params', '8': const {}, '10': 'params'},
  ],
};

/// Descriptor for `QueryParamsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryParamsResponseDescriptor = $convert.base64Decode('ChNRdWVyeVBhcmFtc1Jlc3BvbnNlEjkKBnBhcmFtcxgBIAEoCzIbLmNvc21vcy5hdXRoLnYxYmV0YTEuUGFyYW1zQgTI3h8AUgZwYXJhbXM=');
