///
//  Generated code. Do not modify.
//  source: cosmos/base/snapshots/v1beta1/snapshot.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use snapshotDescriptor instead')
const Snapshot$json = const {
  '1': 'Snapshot',
  '2': const [
    const {'1': 'height', '3': 1, '4': 1, '5': 4, '10': 'height'},
    const {'1': 'format', '3': 2, '4': 1, '5': 13, '10': 'format'},
    const {'1': 'chunks', '3': 3, '4': 1, '5': 13, '10': 'chunks'},
    const {'1': 'hash', '3': 4, '4': 1, '5': 12, '10': 'hash'},
    const {'1': 'metadata', '3': 5, '4': 1, '5': 11, '6': '.cosmos.base.snapshots.v1beta1.Metadata', '8': const {}, '10': 'metadata'},
  ],
};

/// Descriptor for `Snapshot`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List snapshotDescriptor = $convert.base64Decode('CghTbmFwc2hvdBIWCgZoZWlnaHQYASABKARSBmhlaWdodBIWCgZmb3JtYXQYAiABKA1SBmZvcm1hdBIWCgZjaHVua3MYAyABKA1SBmNodW5rcxISCgRoYXNoGAQgASgMUgRoYXNoEkkKCG1ldGFkYXRhGAUgASgLMicuY29zbW9zLmJhc2Uuc25hcHNob3RzLnYxYmV0YTEuTWV0YWRhdGFCBMjeHwBSCG1ldGFkYXRh');
@$core.Deprecated('Use metadataDescriptor instead')
const Metadata$json = const {
  '1': 'Metadata',
  '2': const [
    const {'1': 'chunk_hashes', '3': 1, '4': 3, '5': 12, '10': 'chunkHashes'},
  ],
};

/// Descriptor for `Metadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metadataDescriptor = $convert.base64Decode('CghNZXRhZGF0YRIhCgxjaHVua19oYXNoZXMYASADKAxSC2NodW5rSGFzaGVz');
@$core.Deprecated('Use snapshotItemDescriptor instead')
const SnapshotItem$json = const {
  '1': 'SnapshotItem',
  '2': const [
    const {'1': 'store', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.snapshots.v1beta1.SnapshotStoreItem', '9': 0, '10': 'store'},
    const {'1': 'iavl', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.snapshots.v1beta1.SnapshotIAVLItem', '8': const {}, '9': 0, '10': 'iavl'},
    const {'1': 'extension', '3': 3, '4': 1, '5': 11, '6': '.cosmos.base.snapshots.v1beta1.SnapshotExtensionMeta', '9': 0, '10': 'extension'},
    const {'1': 'extension_payload', '3': 4, '4': 1, '5': 11, '6': '.cosmos.base.snapshots.v1beta1.SnapshotExtensionPayload', '9': 0, '10': 'extensionPayload'},
  ],
  '8': const [
    const {'1': 'item'},
  ],
};

/// Descriptor for `SnapshotItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List snapshotItemDescriptor = $convert.base64Decode('CgxTbmFwc2hvdEl0ZW0SSAoFc3RvcmUYASABKAsyMC5jb3Ntb3MuYmFzZS5zbmFwc2hvdHMudjFiZXRhMS5TbmFwc2hvdFN0b3JlSXRlbUgAUgVzdG9yZRJPCgRpYXZsGAIgASgLMi8uY29zbW9zLmJhc2Uuc25hcHNob3RzLnYxYmV0YTEuU25hcHNob3RJQVZMSXRlbUII4t4fBElBVkxIAFIEaWF2bBJUCglleHRlbnNpb24YAyABKAsyNC5jb3Ntb3MuYmFzZS5zbmFwc2hvdHMudjFiZXRhMS5TbmFwc2hvdEV4dGVuc2lvbk1ldGFIAFIJZXh0ZW5zaW9uEmYKEWV4dGVuc2lvbl9wYXlsb2FkGAQgASgLMjcuY29zbW9zLmJhc2Uuc25hcHNob3RzLnYxYmV0YTEuU25hcHNob3RFeHRlbnNpb25QYXlsb2FkSABSEGV4dGVuc2lvblBheWxvYWRCBgoEaXRlbQ==');
@$core.Deprecated('Use snapshotStoreItemDescriptor instead')
const SnapshotStoreItem$json = const {
  '1': 'SnapshotStoreItem',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `SnapshotStoreItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List snapshotStoreItemDescriptor = $convert.base64Decode('ChFTbmFwc2hvdFN0b3JlSXRlbRISCgRuYW1lGAEgASgJUgRuYW1l');
@$core.Deprecated('Use snapshotIAVLItemDescriptor instead')
const SnapshotIAVLItem$json = const {
  '1': 'SnapshotIAVLItem',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 12, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
    const {'1': 'version', '3': 3, '4': 1, '5': 3, '10': 'version'},
    const {'1': 'height', '3': 4, '4': 1, '5': 5, '10': 'height'},
  ],
};

/// Descriptor for `SnapshotIAVLItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List snapshotIAVLItemDescriptor = $convert.base64Decode('ChBTbmFwc2hvdElBVkxJdGVtEhAKA2tleRgBIAEoDFIDa2V5EhQKBXZhbHVlGAIgASgMUgV2YWx1ZRIYCgd2ZXJzaW9uGAMgASgDUgd2ZXJzaW9uEhYKBmhlaWdodBgEIAEoBVIGaGVpZ2h0');
@$core.Deprecated('Use snapshotExtensionMetaDescriptor instead')
const SnapshotExtensionMeta$json = const {
  '1': 'SnapshotExtensionMeta',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'format', '3': 2, '4': 1, '5': 13, '10': 'format'},
  ],
};

/// Descriptor for `SnapshotExtensionMeta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List snapshotExtensionMetaDescriptor = $convert.base64Decode('ChVTbmFwc2hvdEV4dGVuc2lvbk1ldGESEgoEbmFtZRgBIAEoCVIEbmFtZRIWCgZmb3JtYXQYAiABKA1SBmZvcm1hdA==');
@$core.Deprecated('Use snapshotExtensionPayloadDescriptor instead')
const SnapshotExtensionPayload$json = const {
  '1': 'SnapshotExtensionPayload',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 12, '10': 'payload'},
  ],
};

/// Descriptor for `SnapshotExtensionPayload`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List snapshotExtensionPayloadDescriptor = $convert.base64Decode('ChhTbmFwc2hvdEV4dGVuc2lvblBheWxvYWQSGAoHcGF5bG9hZBgBIAEoDFIHcGF5bG9hZA==');
