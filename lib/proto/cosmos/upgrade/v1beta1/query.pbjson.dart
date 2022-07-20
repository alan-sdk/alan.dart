///
import 'dart:convert' as $convert;
import 'dart:core' as $core;
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
};

/// Descriptor for `QueryUpgradedConsensusStateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryUpgradedConsensusStateRequestDescriptor = $convert.base64Decode('CiJRdWVyeVVwZ3JhZGVkQ29uc2Vuc3VzU3RhdGVSZXF1ZXN0Eh8KC2xhc3RfaGVpZ2h0GAEgASgDUgpsYXN0SGVpZ2h0');
@$core.Deprecated('Use queryUpgradedConsensusStateResponseDescriptor instead')
const QueryUpgradedConsensusStateResponse$json = const {
  '1': 'QueryUpgradedConsensusStateResponse',
  '2': const [
    const {'1': 'upgraded_consensus_state', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Any', '10': 'upgradedConsensusState'},
  ],
};

/// Descriptor for `QueryUpgradedConsensusStateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryUpgradedConsensusStateResponseDescriptor = $convert.base64Decode('CiNRdWVyeVVwZ3JhZGVkQ29uc2Vuc3VzU3RhdGVSZXNwb25zZRJOChh1cGdyYWRlZF9jb25zZW5zdXNfc3RhdGUYASABKAsyFC5nb29nbGUucHJvdG9idWYuQW55UhZ1cGdyYWRlZENvbnNlbnN1c1N0YXRl');
