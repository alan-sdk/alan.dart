///
//  Generated code. Do not modify.
//  source: cosmos/upgrade/v1beta1/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use queryCurrentPlanRequestDescriptor instead')
const QueryCurrentPlanRequest$json = const {
  '1': 'QueryCurrentPlanRequest',
};

/// Descriptor for `QueryCurrentPlanRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryCurrentPlanRequestDescriptor = $convert.base64Decode('ChdRdWVyeUN1cnJlbnRQbGFuUmVxdWVzdA==');
@$core.Deprecated('Use queryCurrentPlanResponseDescriptor instead')
const QueryCurrentPlanResponse$json = const {
  '1': 'QueryCurrentPlanResponse',
  '2': const [
    const {'1': 'plan', '3': 1, '4': 1, '5': 11, '6': '.cosmos.upgrade.v1beta1.Plan', '10': 'plan'},
  ],
};

/// Descriptor for `QueryCurrentPlanResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryCurrentPlanResponseDescriptor = $convert.base64Decode('ChhRdWVyeUN1cnJlbnRQbGFuUmVzcG9uc2USMAoEcGxhbhgBIAEoCzIcLmNvc21vcy51cGdyYWRlLnYxYmV0YTEuUGxhblIEcGxhbg==');
@$core.Deprecated('Use queryAppliedPlanRequestDescriptor instead')
const QueryAppliedPlanRequest$json = const {
  '1': 'QueryAppliedPlanRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `QueryAppliedPlanRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAppliedPlanRequestDescriptor = $convert.base64Decode('ChdRdWVyeUFwcGxpZWRQbGFuUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1l');
@$core.Deprecated('Use queryAppliedPlanResponseDescriptor instead')
const QueryAppliedPlanResponse$json = const {
  '1': 'QueryAppliedPlanResponse',
  '2': const [
    const {'1': 'height', '3': 1, '4': 1, '5': 3, '10': 'height'},
  ],
};

/// Descriptor for `QueryAppliedPlanResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAppliedPlanResponseDescriptor = $convert.base64Decode('ChhRdWVyeUFwcGxpZWRQbGFuUmVzcG9uc2USFgoGaGVpZ2h0GAEgASgDUgZoZWlnaHQ=');
@$core.Deprecated('Use queryUpgradedConsensusStateRequestDescriptor instead')
const QueryUpgradedConsensusStateRequest$json = const {
  '1': 'QueryUpgradedConsensusStateRequest',
  '2': const [
    const {'1': 'last_height', '3': 1, '4': 1, '5': 3, '10': 'lastHeight'},
  ],
  '7': const {'3': true},
};

/// Descriptor for `QueryUpgradedConsensusStateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryUpgradedConsensusStateRequestDescriptor = $convert.base64Decode('CiJRdWVyeVVwZ3JhZGVkQ29uc2Vuc3VzU3RhdGVSZXF1ZXN0Eh8KC2xhc3RfaGVpZ2h0GAEgASgDUgpsYXN0SGVpZ2h0OgIYAQ==');
@$core.Deprecated('Use queryUpgradedConsensusStateResponseDescriptor instead')
const QueryUpgradedConsensusStateResponse$json = const {
  '1': 'QueryUpgradedConsensusStateResponse',
  '2': const [
    const {'1': 'upgraded_consensus_state', '3': 2, '4': 1, '5': 12, '10': 'upgradedConsensusState'},
  ],
  '7': const {'3': true},
  '9': const [
    const {'1': 1, '2': 2},
  ],
};

/// Descriptor for `QueryUpgradedConsensusStateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryUpgradedConsensusStateResponseDescriptor = $convert.base64Decode('CiNRdWVyeVVwZ3JhZGVkQ29uc2Vuc3VzU3RhdGVSZXNwb25zZRI4Chh1cGdyYWRlZF9jb25zZW5zdXNfc3RhdGUYAiABKAxSFnVwZ3JhZGVkQ29uc2Vuc3VzU3RhdGU6AhgBSgQIARAC');
@$core.Deprecated('Use queryModuleVersionsRequestDescriptor instead')
const QueryModuleVersionsRequest$json = const {
  '1': 'QueryModuleVersionsRequest',
  '2': const [
    const {'1': 'module_name', '3': 1, '4': 1, '5': 9, '10': 'moduleName'},
  ],
};

/// Descriptor for `QueryModuleVersionsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryModuleVersionsRequestDescriptor = $convert.base64Decode('ChpRdWVyeU1vZHVsZVZlcnNpb25zUmVxdWVzdBIfCgttb2R1bGVfbmFtZRgBIAEoCVIKbW9kdWxlTmFtZQ==');
@$core.Deprecated('Use queryModuleVersionsResponseDescriptor instead')
const QueryModuleVersionsResponse$json = const {
  '1': 'QueryModuleVersionsResponse',
  '2': const [
    const {'1': 'module_versions', '3': 1, '4': 3, '5': 11, '6': '.cosmos.upgrade.v1beta1.ModuleVersion', '10': 'moduleVersions'},
  ],
};

/// Descriptor for `QueryModuleVersionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryModuleVersionsResponseDescriptor = $convert.base64Decode('ChtRdWVyeU1vZHVsZVZlcnNpb25zUmVzcG9uc2USTgoPbW9kdWxlX3ZlcnNpb25zGAEgAygLMiUuY29zbW9zLnVwZ3JhZGUudjFiZXRhMS5Nb2R1bGVWZXJzaW9uUg5tb2R1bGVWZXJzaW9ucw==');
