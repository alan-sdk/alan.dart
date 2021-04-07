///
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use planDescriptor instead')
const Plan$json = const {
  '1': 'Plan',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'time', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'time'},
    const {'1': 'height', '3': 3, '4': 1, '5': 3, '10': 'height'},
    const {'1': 'info', '3': 4, '4': 1, '5': 9, '10': 'info'},
    const {'1': 'upgraded_client_state', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Any', '8': const {}, '10': 'upgradedClientState'},
  ],
  '7': const {},
};

/// Descriptor for `Plan`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List planDescriptor = $convert.base64Decode('CgRQbGFuEhIKBG5hbWUYASABKAlSBG5hbWUSOAoEdGltZRgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCCJDfHwHI3h8AUgR0aW1lEhYKBmhlaWdodBgDIAEoA1IGaGVpZ2h0EhIKBGluZm8YBCABKAlSBGluZm8SagoVdXBncmFkZWRfY2xpZW50X3N0YXRlGAUgASgLMhQuZ29vZ2xlLnByb3RvYnVmLkFueUIg8t4fHHlhbWw6InVwZ3JhZGVkX2NsaWVudF9zdGF0ZSJSE3VwZ3JhZGVkQ2xpZW50U3RhdGU6BOigHwE=');
@$core.Deprecated('Use softwareUpgradeProposalDescriptor instead')
const SoftwareUpgradeProposal$json = const {
  '1': 'SoftwareUpgradeProposal',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'plan', '3': 3, '4': 1, '5': 11, '6': '.cosmos.upgrade.v1beta1.Plan', '8': const {}, '10': 'plan'},
  ],
  '7': const {},
};

/// Descriptor for `SoftwareUpgradeProposal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List softwareUpgradeProposalDescriptor = $convert.base64Decode('ChdTb2Z0d2FyZVVwZ3JhZGVQcm9wb3NhbBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb24YAiABKAlSC2Rlc2NyaXB0aW9uEjYKBHBsYW4YAyABKAsyHC5jb3Ntb3MudXBncmFkZS52MWJldGExLlBsYW5CBMjeHwBSBHBsYW46BOigHwE=');
@$core.Deprecated('Use cancelSoftwareUpgradeProposalDescriptor instead')
const CancelSoftwareUpgradeProposal$json = const {
  '1': 'CancelSoftwareUpgradeProposal',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
  ],
  '7': const {},
};

/// Descriptor for `CancelSoftwareUpgradeProposal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cancelSoftwareUpgradeProposalDescriptor = $convert.base64Decode('Ch1DYW5jZWxTb2Z0d2FyZVVwZ3JhZGVQcm9wb3NhbBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb24YAiABKAlSC2Rlc2NyaXB0aW9uOgTooB8B');
