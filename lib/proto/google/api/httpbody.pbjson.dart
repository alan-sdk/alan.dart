///
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use httpBodyDescriptor instead')
const HttpBody$json = const {
  '1': 'HttpBody',
  '2': const [
    const {'1': 'content_type', '3': 1, '4': 1, '5': 9, '10': 'contentType'},
    const {'1': 'data', '3': 2, '4': 1, '5': 12, '10': 'data'},
    const {'1': 'extensions', '3': 3, '4': 3, '5': 11, '6': '.google.protobuf.Any', '10': 'extensions'},
  ],
};

/// Descriptor for `HttpBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List httpBodyDescriptor = $convert.base64Decode('CghIdHRwQm9keRIhCgxjb250ZW50X3R5cGUYASABKAlSC2NvbnRlbnRUeXBlEhIKBGRhdGEYAiABKAxSBGRhdGESNAoKZXh0ZW5zaW9ucxgDIAMoCzIULmdvb2dsZS5wcm90b2J1Zi5BbnlSCmV4dGVuc2lvbnM=');
