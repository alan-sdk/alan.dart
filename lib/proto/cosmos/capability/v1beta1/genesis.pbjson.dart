///
//  Generated code. Do not modify.
//  source: cosmos/capability/v1beta1/genesis.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use genesisOwnersDescriptor instead')
const GenesisOwners$json = const {
  '1': 'GenesisOwners',
  '2': const [
    const {'1': 'index', '3': 1, '4': 1, '5': 4, '10': 'index'},
    const {'1': 'index_owners', '3': 2, '4': 1, '5': 11, '6': '.cosmos.capability.v1beta1.CapabilityOwners', '8': const {}, '10': 'indexOwners'},
  ],
};

/// Descriptor for `GenesisOwners`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genesisOwnersDescriptor = $convert.base64Decode('Cg1HZW5lc2lzT3duZXJzEhQKBWluZGV4GAEgASgEUgVpbmRleBJrCgxpbmRleF9vd25lcnMYAiABKAsyKy5jb3Ntb3MuY2FwYWJpbGl0eS52MWJldGExLkNhcGFiaWxpdHlPd25lcnNCG8jeHwDy3h8TeWFtbDoiaW5kZXhfb3duZXJzIlILaW5kZXhPd25lcnM=');
@$core.Deprecated('Use genesisStateDescriptor instead')
const GenesisState$json = const {
  '1': 'GenesisState',
  '2': const [
    const {'1': 'index', '3': 1, '4': 1, '5': 4, '10': 'index'},
    const {'1': 'owners', '3': 2, '4': 3, '5': 11, '6': '.cosmos.capability.v1beta1.GenesisOwners', '8': const {}, '10': 'owners'},
  ],
};

/// Descriptor for `GenesisState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genesisStateDescriptor = $convert.base64Decode('CgxHZW5lc2lzU3RhdGUSFAoFaW5kZXgYASABKARSBWluZGV4EkYKBm93bmVycxgCIAMoCzIoLmNvc21vcy5jYXBhYmlsaXR5LnYxYmV0YTEuR2VuZXNpc093bmVyc0IEyN4fAFIGb3duZXJz');
