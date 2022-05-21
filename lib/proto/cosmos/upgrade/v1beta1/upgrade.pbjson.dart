///
//  Generated code. Do not modify.
//  source: cosmos/upgrade/v1beta1/upgrade.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use planDescriptor instead')
const Plan$json = const {
  '1': 'Plan',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'time',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '8': const {'3': true},
      '10': 'time',
    },
    const {'1': 'height', '3': 3, '4': 1, '5': 3, '10': 'height'},
    const {'1': 'info', '3': 4, '4': 1, '5': 9, '10': 'info'},
    const {
      '1': 'upgraded_client_state',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Any',
      '8': const {'3': true},
      '10': 'upgradedClientState',
    },
  ],
  '7': const {},
};

/// Descriptor for `Plan`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List planDescriptor = $convert.base64Decode('CgRQbGFuEhIKBG5hbWUYASABKAlSBG5hbWUSOgoEdGltZRgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCChgBkN8fAcjeHwBSBHRpbWUSFgoGaGVpZ2h0GAMgASgDUgZoZWlnaHQSEgoEaW5mbxgEIAEoCVIEaW5mbxJsChV1cGdyYWRlZF9jbGllbnRfc3RhdGUYBSABKAsyFC5nb29nbGUucHJvdG9idWYuQW55QiIYAfLeHxx5YW1sOiJ1cGdyYWRlZF9jbGllbnRfc3RhdGUiUhN1cGdyYWRlZENsaWVudFN0YXRlOgjooB8BmKAfAA==');
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
final $typed_data.Uint8List softwareUpgradeProposalDescriptor = $convert.base64Decode('ChdTb2Z0d2FyZVVwZ3JhZGVQcm9wb3NhbBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb24YAiABKAlSC2Rlc2NyaXB0aW9uEjYKBHBsYW4YAyABKAsyHC5jb3Ntb3MudXBncmFkZS52MWJldGExLlBsYW5CBMjeHwBSBHBsYW46COigHwGYoB8A');
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
final $typed_data.Uint8List cancelSoftwareUpgradeProposalDescriptor = $convert.base64Decode('Ch1DYW5jZWxTb2Z0d2FyZVVwZ3JhZGVQcm9wb3NhbBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb24YAiABKAlSC2Rlc2NyaXB0aW9uOgjooB8BmKAfAA==');
@$core.Deprecated('Use moduleVersionDescriptor instead')
const ModuleVersion$json = const {
  '1': 'ModuleVersion',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'version', '3': 2, '4': 1, '5': 4, '10': 'version'},
  ],
  '7': const {},
};

/// Descriptor for `ModuleVersion`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moduleVersionDescriptor = $convert.base64Decode('Cg1Nb2R1bGVWZXJzaW9uEhIKBG5hbWUYASABKAlSBG5hbWUSGAoHdmVyc2lvbhgCIAEoBFIHdmVyc2lvbjoI6KAfAZigHwE=');
