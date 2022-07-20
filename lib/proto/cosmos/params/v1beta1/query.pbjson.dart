///
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use queryParamsRequestDescriptor instead')
const QueryParamsRequest$json = const {
  '1': 'QueryParamsRequest',
  '2': const [
    const {'1': 'subspace', '3': 1, '4': 1, '5': 9, '10': 'subspace'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `QueryParamsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryParamsRequestDescriptor = $convert.base64Decode('ChJRdWVyeVBhcmFtc1JlcXVlc3QSGgoIc3Vic3BhY2UYASABKAlSCHN1YnNwYWNlEhAKA2tleRgCIAEoCVIDa2V5');
@$core.Deprecated('Use queryParamsResponseDescriptor instead')
const QueryParamsResponse$json = const {
  '1': 'QueryParamsResponse',
  '2': const [
    const {'1': 'param', '3': 1, '4': 1, '5': 11, '6': '.cosmos.params.v1beta1.ParamChange', '8': const {}, '10': 'param'},
  ],
};

/// Descriptor for `QueryParamsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryParamsResponseDescriptor = $convert.base64Decode('ChNRdWVyeVBhcmFtc1Jlc3BvbnNlEj4KBXBhcmFtGAEgASgLMiIuY29zbW9zLnBhcmFtcy52MWJldGExLlBhcmFtQ2hhbmdlQgTI3h8AUgVwYXJhbQ==');
