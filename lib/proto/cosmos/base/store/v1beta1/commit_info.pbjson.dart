///
//  Generated code. Do not modify.
//  source: cosmos/base/store/v1beta1/commit_info.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use commitInfoDescriptor instead')
const CommitInfo$json = const {
  '1': 'CommitInfo',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 3, '10': 'version'},
    const {'1': 'store_infos', '3': 2, '4': 3, '5': 11, '6': '.cosmos.base.store.v1beta1.StoreInfo', '8': const {}, '10': 'storeInfos'},
  ],
};

/// Descriptor for `CommitInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commitInfoDescriptor = $convert.base64Decode('CgpDb21taXRJbmZvEhgKB3ZlcnNpb24YASABKANSB3ZlcnNpb24SSwoLc3RvcmVfaW5mb3MYAiADKAsyJC5jb3Ntb3MuYmFzZS5zdG9yZS52MWJldGExLlN0b3JlSW5mb0IEyN4fAFIKc3RvcmVJbmZvcw==');
@$core.Deprecated('Use storeInfoDescriptor instead')
const StoreInfo$json = const {
  '1': 'StoreInfo',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'commit_id', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.store.v1beta1.CommitID', '8': const {}, '10': 'commitId'},
  ],
};

/// Descriptor for `StoreInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storeInfoDescriptor = $convert.base64Decode('CglTdG9yZUluZm8SEgoEbmFtZRgBIAEoCVIEbmFtZRJGCgljb21taXRfaWQYAiABKAsyIy5jb3Ntb3MuYmFzZS5zdG9yZS52MWJldGExLkNvbW1pdElEQgTI3h8AUghjb21taXRJZA==');
@$core.Deprecated('Use commitIDDescriptor instead')
const CommitID$json = const {
  '1': 'CommitID',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 3, '10': 'version'},
    const {'1': 'hash', '3': 2, '4': 1, '5': 12, '10': 'hash'},
  ],
  '7': const {},
};

/// Descriptor for `CommitID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commitIDDescriptor = $convert.base64Decode('CghDb21taXRJRBIYCgd2ZXJzaW9uGAEgASgDUgd2ZXJzaW9uEhIKBGhhc2gYAiABKAxSBGhhc2g6BJigHwA=');
