///
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use parameterChangeProposalDescriptor instead')
const ParameterChangeProposal$json = const {
  '1': 'ParameterChangeProposal',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'changes', '3': 3, '4': 3, '5': 11, '6': '.cosmos.params.v1beta1.ParamChange', '8': const {}, '10': 'changes'},
  ],
  '7': const {},
};

/// Descriptor for `ParameterChangeProposal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List parameterChangeProposalDescriptor = $convert.base64Decode('ChdQYXJhbWV0ZXJDaGFuZ2VQcm9wb3NhbBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb24YAiABKAlSC2Rlc2NyaXB0aW9uEkIKB2NoYW5nZXMYAyADKAsyIi5jb3Ntb3MucGFyYW1zLnYxYmV0YTEuUGFyYW1DaGFuZ2VCBMjeHwBSB2NoYW5nZXM6CIigHwCYoB8A');
@$core.Deprecated('Use paramChangeDescriptor instead')
const ParamChange$json = const {
  '1': 'ParamChange',
  '2': const [
    const {'1': 'subspace', '3': 1, '4': 1, '5': 9, '10': 'subspace'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 3, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {},
};

/// Descriptor for `ParamChange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paramChangeDescriptor = $convert.base64Decode('CgtQYXJhbUNoYW5nZRIaCghzdWJzcGFjZRgBIAEoCVIIc3Vic3BhY2USEAoDa2V5GAIgASgJUgNrZXkSFAoFdmFsdWUYAyABKAlSBXZhbHVlOgSYoB8A');
