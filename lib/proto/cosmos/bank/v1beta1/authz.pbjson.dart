///
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use sendAuthorizationDescriptor instead')
const SendAuthorization$json = const {
  '1': 'SendAuthorization',
  '2': const [
    const {'1': 'spend_limit', '3': 1, '4': 3, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': const {}, '10': 'spendLimit'},
  ],
  '7': const {},
};

/// Descriptor for `SendAuthorization`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendAuthorizationDescriptor = $convert.base64Decode('ChFTZW5kQXV0aG9yaXphdGlvbhJsCgtzcGVuZF9saW1pdBgBIAMoCzIZLmNvc21vcy5iYXNlLnYxYmV0YTEuQ29pbkIwyN4fAKrfHyhnaXRodWIuY29tL2Nvc21vcy9jb3Ntb3Mtc2RrL3R5cGVzLkNvaW5zUgpzcGVuZExpbWl0OhHStC0NQXV0aG9yaXphdGlvbg==');
