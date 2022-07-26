///
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use blockDescriptor instead')
const Block$json = const {
  '1': 'Block',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.tendermint.types.Header', '8': const {}, '10': 'header'},
    const {'1': 'data', '3': 2, '4': 1, '5': 11, '6': '.tendermint.types.Data', '8': const {}, '10': 'data'},
    const {'1': 'evidence', '3': 3, '4': 1, '5': 11, '6': '.tendermint.types.EvidenceList', '8': const {}, '10': 'evidence'},
    const {'1': 'last_commit', '3': 4, '4': 1, '5': 11, '6': '.tendermint.types.Commit', '10': 'lastCommit'},
  ],
};

/// Descriptor for `Block`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blockDescriptor = $convert.base64Decode('CgVCbG9jaxI2CgZoZWFkZXIYASABKAsyGC50ZW5kZXJtaW50LnR5cGVzLkhlYWRlckIEyN4fAFIGaGVhZGVyEjAKBGRhdGEYAiABKAsyFi50ZW5kZXJtaW50LnR5cGVzLkRhdGFCBMjeHwBSBGRhdGESQAoIZXZpZGVuY2UYAyABKAsyHi50ZW5kZXJtaW50LnR5cGVzLkV2aWRlbmNlTGlzdEIEyN4fAFIIZXZpZGVuY2USOQoLbGFzdF9jb21taXQYBCABKAsyGC50ZW5kZXJtaW50LnR5cGVzLkNvbW1pdFIKbGFzdENvbW1pdA==');
