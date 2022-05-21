///
//  Generated code. Do not modify.
//  source: tendermint/types/evidence.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use evidenceDescriptor instead')
const Evidence$json = const {
  '1': 'Evidence',
  '2': const [
    const {'1': 'duplicate_vote_evidence', '3': 1, '4': 1, '5': 11, '6': '.tendermint.types.DuplicateVoteEvidence', '9': 0, '10': 'duplicateVoteEvidence'},
    const {'1': 'light_client_attack_evidence', '3': 2, '4': 1, '5': 11, '6': '.tendermint.types.LightClientAttackEvidence', '9': 0, '10': 'lightClientAttackEvidence'},
  ],
  '8': const [
    const {'1': 'sum'},
  ],
};

/// Descriptor for `Evidence`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List evidenceDescriptor = $convert.base64Decode('CghFdmlkZW5jZRJhChdkdXBsaWNhdGVfdm90ZV9ldmlkZW5jZRgBIAEoCzInLnRlbmRlcm1pbnQudHlwZXMuRHVwbGljYXRlVm90ZUV2aWRlbmNlSABSFWR1cGxpY2F0ZVZvdGVFdmlkZW5jZRJuChxsaWdodF9jbGllbnRfYXR0YWNrX2V2aWRlbmNlGAIgASgLMisudGVuZGVybWludC50eXBlcy5MaWdodENsaWVudEF0dGFja0V2aWRlbmNlSABSGWxpZ2h0Q2xpZW50QXR0YWNrRXZpZGVuY2VCBQoDc3Vt');
@$core.Deprecated('Use duplicateVoteEvidenceDescriptor instead')
const DuplicateVoteEvidence$json = const {
  '1': 'DuplicateVoteEvidence',
  '2': const [
    const {'1': 'vote_a', '3': 1, '4': 1, '5': 11, '6': '.tendermint.types.Vote', '10': 'voteA'},
    const {'1': 'vote_b', '3': 2, '4': 1, '5': 11, '6': '.tendermint.types.Vote', '10': 'voteB'},
    const {'1': 'total_voting_power', '3': 3, '4': 1, '5': 3, '10': 'totalVotingPower'},
    const {'1': 'validator_power', '3': 4, '4': 1, '5': 3, '10': 'validatorPower'},
    const {'1': 'timestamp', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'timestamp'},
  ],
};

/// Descriptor for `DuplicateVoteEvidence`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List duplicateVoteEvidenceDescriptor = $convert.base64Decode('ChVEdXBsaWNhdGVWb3RlRXZpZGVuY2USLQoGdm90ZV9hGAEgASgLMhYudGVuZGVybWludC50eXBlcy5Wb3RlUgV2b3RlQRItCgZ2b3RlX2IYAiABKAsyFi50ZW5kZXJtaW50LnR5cGVzLlZvdGVSBXZvdGVCEiwKEnRvdGFsX3ZvdGluZ19wb3dlchgDIAEoA1IQdG90YWxWb3RpbmdQb3dlchInCg92YWxpZGF0b3JfcG93ZXIYBCABKANSDnZhbGlkYXRvclBvd2VyEkIKCXRpbWVzdGFtcBgFIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCCMjeHwCQ3x8BUgl0aW1lc3RhbXA=');
@$core.Deprecated('Use lightClientAttackEvidenceDescriptor instead')
const LightClientAttackEvidence$json = const {
  '1': 'LightClientAttackEvidence',
  '2': const [
    const {'1': 'conflicting_block', '3': 1, '4': 1, '5': 11, '6': '.tendermint.types.LightBlock', '10': 'conflictingBlock'},
    const {'1': 'common_height', '3': 2, '4': 1, '5': 3, '10': 'commonHeight'},
    const {'1': 'byzantine_validators', '3': 3, '4': 3, '5': 11, '6': '.tendermint.types.Validator', '10': 'byzantineValidators'},
    const {'1': 'total_voting_power', '3': 4, '4': 1, '5': 3, '10': 'totalVotingPower'},
    const {'1': 'timestamp', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'timestamp'},
  ],
};

/// Descriptor for `LightClientAttackEvidence`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lightClientAttackEvidenceDescriptor = $convert.base64Decode('ChlMaWdodENsaWVudEF0dGFja0V2aWRlbmNlEkkKEWNvbmZsaWN0aW5nX2Jsb2NrGAEgASgLMhwudGVuZGVybWludC50eXBlcy5MaWdodEJsb2NrUhBjb25mbGljdGluZ0Jsb2NrEiMKDWNvbW1vbl9oZWlnaHQYAiABKANSDGNvbW1vbkhlaWdodBJOChRieXphbnRpbmVfdmFsaWRhdG9ycxgDIAMoCzIbLnRlbmRlcm1pbnQudHlwZXMuVmFsaWRhdG9yUhNieXphbnRpbmVWYWxpZGF0b3JzEiwKEnRvdGFsX3ZvdGluZ19wb3dlchgEIAEoA1IQdG90YWxWb3RpbmdQb3dlchJCCgl0aW1lc3RhbXAYBSABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgjI3h8AkN8fAVIJdGltZXN0YW1w');
@$core.Deprecated('Use evidenceListDescriptor instead')
const EvidenceList$json = const {
  '1': 'EvidenceList',
  '2': const [
    const {'1': 'evidence', '3': 1, '4': 3, '5': 11, '6': '.tendermint.types.Evidence', '8': const {}, '10': 'evidence'},
  ],
};

/// Descriptor for `EvidenceList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List evidenceListDescriptor = $convert.base64Decode('CgxFdmlkZW5jZUxpc3QSPAoIZXZpZGVuY2UYASADKAsyGi50ZW5kZXJtaW50LnR5cGVzLkV2aWRlbmNlQgTI3h8AUghldmlkZW5jZQ==');
