///
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use legacyAminoPubKeyDescriptor instead')
const LegacyAminoPubKey$json = const {
  '1': 'LegacyAminoPubKey',
  '2': const [
    const {'1': 'threshold', '3': 1, '4': 1, '5': 13, '8': const {}, '10': 'threshold'},
    const {'1': 'public_keys', '3': 2, '4': 3, '5': 11, '6': '.google.protobuf.Any', '8': const {}, '10': 'publicKeys'},
  ],
  '7': const {},
};

/// Descriptor for `LegacyAminoPubKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List legacyAminoPubKeyDescriptor = $convert.base64Decode('ChFMZWdhY3lBbWlub1B1YktleRIyCgl0aHJlc2hvbGQYASABKA1CFPLeHxB5YW1sOiJ0aHJlc2hvbGQiUgl0aHJlc2hvbGQSVAoLcHVibGljX2tleXMYAiADKAsyFC5nb29nbGUucHJvdG9idWYuQW55Qh3i3h8HUHViS2V5c/LeHw55YW1sOiJwdWJrZXlzIlIKcHVibGljS2V5czoEiKAfAA==');
