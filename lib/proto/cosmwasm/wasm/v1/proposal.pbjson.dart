///
//  Generated code. Do not modify.
//  source: cosmwasm/wasm/v1/proposal.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use storeCodeProposalDescriptor instead')
const StoreCodeProposal$json = const {
  '1': 'StoreCodeProposal',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'run_as', '3': 3, '4': 1, '5': 9, '10': 'runAs'},
    const {'1': 'wasm_byte_code', '3': 4, '4': 1, '5': 12, '8': const {}, '10': 'wasmByteCode'},
    const {'1': 'instantiate_permission', '3': 7, '4': 1, '5': 11, '6': '.cosmwasm.wasm.v1.AccessConfig', '10': 'instantiatePermission'},
  ],
  '9': const [
    const {'1': 5, '2': 6},
    const {'1': 6, '2': 7},
  ],
};

/// Descriptor for `StoreCodeProposal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storeCodeProposalDescriptor = $convert.base64Decode('ChFTdG9yZUNvZGVQcm9wb3NhbBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb24YAiABKAlSC2Rlc2NyaXB0aW9uEhUKBnJ1bl9hcxgDIAEoCVIFcnVuQXMSNgoOd2FzbV9ieXRlX2NvZGUYBCABKAxCEOLeHwxXQVNNQnl0ZUNvZGVSDHdhc21CeXRlQ29kZRJVChZpbnN0YW50aWF0ZV9wZXJtaXNzaW9uGAcgASgLMh4uY29zbXdhc20ud2FzbS52MS5BY2Nlc3NDb25maWdSFWluc3RhbnRpYXRlUGVybWlzc2lvbkoECAUQBkoECAYQBw==');
@$core.Deprecated('Use instantiateContractProposalDescriptor instead')
const InstantiateContractProposal$json = const {
  '1': 'InstantiateContractProposal',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'run_as', '3': 3, '4': 1, '5': 9, '10': 'runAs'},
    const {'1': 'admin', '3': 4, '4': 1, '5': 9, '10': 'admin'},
    const {'1': 'code_id', '3': 5, '4': 1, '5': 4, '8': const {}, '10': 'codeId'},
    const {'1': 'label', '3': 6, '4': 1, '5': 9, '10': 'label'},
    const {'1': 'msg', '3': 7, '4': 1, '5': 12, '8': const {}, '10': 'msg'},
    const {'1': 'funds', '3': 8, '4': 3, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': const {}, '10': 'funds'},
  ],
};

/// Descriptor for `InstantiateContractProposal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List instantiateContractProposalDescriptor = $convert.base64Decode('ChtJbnN0YW50aWF0ZUNvbnRyYWN0UHJvcG9zYWwSFAoFdGl0bGUYASABKAlSBXRpdGxlEiAKC2Rlc2NyaXB0aW9uGAIgASgJUgtkZXNjcmlwdGlvbhIVCgZydW5fYXMYAyABKAlSBXJ1bkFzEhQKBWFkbWluGAQgASgJUgVhZG1pbhIjCgdjb2RlX2lkGAUgASgEQgri3h8GQ29kZUlEUgZjb2RlSWQSFAoFbGFiZWwYBiABKAlSBWxhYmVsEigKA21zZxgHIAEoDEIW+t4fElJhd0NvbnRyYWN0TWVzc2FnZVIDbXNnEmEKBWZ1bmRzGAggAygLMhkuY29zbW9zLmJhc2UudjFiZXRhMS5Db2luQjDI3h8Aqt8fKGdpdGh1Yi5jb20vY29zbW9zL2Nvc21vcy1zZGsvdHlwZXMuQ29pbnNSBWZ1bmRz');
@$core.Deprecated('Use migrateContractProposalDescriptor instead')
const MigrateContractProposal$json = const {
  '1': 'MigrateContractProposal',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'contract', '3': 4, '4': 1, '5': 9, '10': 'contract'},
    const {'1': 'code_id', '3': 5, '4': 1, '5': 4, '8': const {}, '10': 'codeId'},
    const {'1': 'msg', '3': 6, '4': 1, '5': 12, '8': const {}, '10': 'msg'},
  ],
};

/// Descriptor for `MigrateContractProposal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List migrateContractProposalDescriptor = $convert.base64Decode('ChdNaWdyYXRlQ29udHJhY3RQcm9wb3NhbBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb24YAiABKAlSC2Rlc2NyaXB0aW9uEhoKCGNvbnRyYWN0GAQgASgJUghjb250cmFjdBIjCgdjb2RlX2lkGAUgASgEQgri3h8GQ29kZUlEUgZjb2RlSWQSKAoDbXNnGAYgASgMQhb63h8SUmF3Q29udHJhY3RNZXNzYWdlUgNtc2c=');
@$core.Deprecated('Use sudoContractProposalDescriptor instead')
const SudoContractProposal$json = const {
  '1': 'SudoContractProposal',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'contract', '3': 3, '4': 1, '5': 9, '10': 'contract'},
    const {'1': 'msg', '3': 4, '4': 1, '5': 12, '8': const {}, '10': 'msg'},
  ],
};

/// Descriptor for `SudoContractProposal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sudoContractProposalDescriptor = $convert.base64Decode('ChRTdWRvQ29udHJhY3RQcm9wb3NhbBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb24YAiABKAlSC2Rlc2NyaXB0aW9uEhoKCGNvbnRyYWN0GAMgASgJUghjb250cmFjdBIoCgNtc2cYBCABKAxCFvreHxJSYXdDb250cmFjdE1lc3NhZ2VSA21zZw==');
@$core.Deprecated('Use executeContractProposalDescriptor instead')
const ExecuteContractProposal$json = const {
  '1': 'ExecuteContractProposal',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'run_as', '3': 3, '4': 1, '5': 9, '10': 'runAs'},
    const {'1': 'contract', '3': 4, '4': 1, '5': 9, '10': 'contract'},
    const {'1': 'msg', '3': 5, '4': 1, '5': 12, '8': const {}, '10': 'msg'},
    const {'1': 'funds', '3': 6, '4': 3, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': const {}, '10': 'funds'},
  ],
};

/// Descriptor for `ExecuteContractProposal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executeContractProposalDescriptor = $convert.base64Decode('ChdFeGVjdXRlQ29udHJhY3RQcm9wb3NhbBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb24YAiABKAlSC2Rlc2NyaXB0aW9uEhUKBnJ1bl9hcxgDIAEoCVIFcnVuQXMSGgoIY29udHJhY3QYBCABKAlSCGNvbnRyYWN0EigKA21zZxgFIAEoDEIW+t4fElJhd0NvbnRyYWN0TWVzc2FnZVIDbXNnEmEKBWZ1bmRzGAYgAygLMhkuY29zbW9zLmJhc2UudjFiZXRhMS5Db2luQjDI3h8Aqt8fKGdpdGh1Yi5jb20vY29zbW9zL2Nvc21vcy1zZGsvdHlwZXMuQ29pbnNSBWZ1bmRz');
@$core.Deprecated('Use updateAdminProposalDescriptor instead')
const UpdateAdminProposal$json = const {
  '1': 'UpdateAdminProposal',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'new_admin', '3': 3, '4': 1, '5': 9, '8': const {}, '10': 'newAdmin'},
    const {'1': 'contract', '3': 4, '4': 1, '5': 9, '10': 'contract'},
  ],
};

/// Descriptor for `UpdateAdminProposal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateAdminProposalDescriptor = $convert.base64Decode('ChNVcGRhdGVBZG1pblByb3Bvc2FsEhQKBXRpdGxlGAEgASgJUgV0aXRsZRIgCgtkZXNjcmlwdGlvbhgCIAEoCVILZGVzY3JpcHRpb24SMQoJbmV3X2FkbWluGAMgASgJQhTy3h8QeWFtbDoibmV3X2FkbWluIlIIbmV3QWRtaW4SGgoIY29udHJhY3QYBCABKAlSCGNvbnRyYWN0');
@$core.Deprecated('Use clearAdminProposalDescriptor instead')
const ClearAdminProposal$json = const {
  '1': 'ClearAdminProposal',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'contract', '3': 3, '4': 1, '5': 9, '10': 'contract'},
  ],
};

/// Descriptor for `ClearAdminProposal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clearAdminProposalDescriptor = $convert.base64Decode('ChJDbGVhckFkbWluUHJvcG9zYWwSFAoFdGl0bGUYASABKAlSBXRpdGxlEiAKC2Rlc2NyaXB0aW9uGAIgASgJUgtkZXNjcmlwdGlvbhIaCghjb250cmFjdBgDIAEoCVIIY29udHJhY3Q=');
@$core.Deprecated('Use pinCodesProposalDescriptor instead')
const PinCodesProposal$json = const {
  '1': 'PinCodesProposal',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'title'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'description'},
    const {'1': 'code_ids', '3': 3, '4': 3, '5': 4, '8': const {}, '10': 'codeIds'},
  ],
};

/// Descriptor for `PinCodesProposal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pinCodesProposalDescriptor = $convert.base64Decode('ChBQaW5Db2Rlc1Byb3Bvc2FsEiYKBXRpdGxlGAEgASgJQhDy3h8MeWFtbDoidGl0bGUiUgV0aXRsZRI4CgtkZXNjcmlwdGlvbhgCIAEoCUIW8t4fEnlhbWw6ImRlc2NyaXB0aW9uIlILZGVzY3JpcHRpb24SOQoIY29kZV9pZHMYAyADKARCHuLeHwdDb2RlSURz8t4fD3lhbWw6ImNvZGVfaWRzIlIHY29kZUlkcw==');
@$core.Deprecated('Use unpinCodesProposalDescriptor instead')
const UnpinCodesProposal$json = const {
  '1': 'UnpinCodesProposal',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'title'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'description'},
    const {'1': 'code_ids', '3': 3, '4': 3, '5': 4, '8': const {}, '10': 'codeIds'},
  ],
};

/// Descriptor for `UnpinCodesProposal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unpinCodesProposalDescriptor = $convert.base64Decode('ChJVbnBpbkNvZGVzUHJvcG9zYWwSJgoFdGl0bGUYASABKAlCEPLeHwx5YW1sOiJ0aXRsZSJSBXRpdGxlEjgKC2Rlc2NyaXB0aW9uGAIgASgJQhby3h8SeWFtbDoiZGVzY3JpcHRpb24iUgtkZXNjcmlwdGlvbhI5Cghjb2RlX2lkcxgDIAMoBEIe4t4fB0NvZGVJRHPy3h8PeWFtbDoiY29kZV9pZHMiUgdjb2RlSWRz');
@$core.Deprecated('Use accessConfigUpdateDescriptor instead')
const AccessConfigUpdate$json = const {
  '1': 'AccessConfigUpdate',
  '2': const [
    const {'1': 'code_id', '3': 1, '4': 1, '5': 4, '8': const {}, '10': 'codeId'},
    const {'1': 'instantiate_permission', '3': 2, '4': 1, '5': 11, '6': '.cosmwasm.wasm.v1.AccessConfig', '8': const {}, '10': 'instantiatePermission'},
  ],
};

/// Descriptor for `AccessConfigUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accessConfigUpdateDescriptor = $convert.base64Decode('ChJBY2Nlc3NDb25maWdVcGRhdGUSIwoHY29kZV9pZBgBIAEoBEIK4t4fBkNvZGVJRFIGY29kZUlkElsKFmluc3RhbnRpYXRlX3Blcm1pc3Npb24YAiABKAsyHi5jb3Ntd2FzbS53YXNtLnYxLkFjY2Vzc0NvbmZpZ0IEyN4fAFIVaW5zdGFudGlhdGVQZXJtaXNzaW9u');
@$core.Deprecated('Use updateInstantiateConfigProposalDescriptor instead')
const UpdateInstantiateConfigProposal$json = const {
  '1': 'UpdateInstantiateConfigProposal',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'title'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'description'},
    const {'1': 'access_config_updates', '3': 3, '4': 3, '5': 11, '6': '.cosmwasm.wasm.v1.AccessConfigUpdate', '8': const {}, '10': 'accessConfigUpdates'},
  ],
};

/// Descriptor for `UpdateInstantiateConfigProposal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateInstantiateConfigProposalDescriptor = $convert.base64Decode('Ch9VcGRhdGVJbnN0YW50aWF0ZUNvbmZpZ1Byb3Bvc2FsEiYKBXRpdGxlGAEgASgJQhDy3h8MeWFtbDoidGl0bGUiUgV0aXRsZRI4CgtkZXNjcmlwdGlvbhgCIAEoCUIW8t4fEnlhbWw6ImRlc2NyaXB0aW9uIlILZGVzY3JpcHRpb24SXgoVYWNjZXNzX2NvbmZpZ191cGRhdGVzGAMgAygLMiQuY29zbXdhc20ud2FzbS52MS5BY2Nlc3NDb25maWdVcGRhdGVCBMjeHwBSE2FjY2Vzc0NvbmZpZ1VwZGF0ZXM=');
