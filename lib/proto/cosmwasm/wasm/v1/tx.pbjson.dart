///
//  Generated code. Do not modify.
//  source: cosmwasm/wasm/v1/tx.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use msgStoreCodeDescriptor instead')
const MsgStoreCode$json = const {
  '1': 'MsgStoreCode',
  '2': const [
    const {'1': 'sender', '3': 1, '4': 1, '5': 9, '10': 'sender'},
    const {'1': 'wasm_byte_code', '3': 2, '4': 1, '5': 12, '8': const {}, '10': 'wasmByteCode'},
    const {'1': 'instantiate_permission', '3': 5, '4': 1, '5': 11, '6': '.cosmwasm.wasm.v1.AccessConfig', '10': 'instantiatePermission'},
  ],
  '9': const [
    const {'1': 3, '2': 4},
    const {'1': 4, '2': 5},
  ],
};

/// Descriptor for `MsgStoreCode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgStoreCodeDescriptor = $convert.base64Decode('CgxNc2dTdG9yZUNvZGUSFgoGc2VuZGVyGAEgASgJUgZzZW5kZXISNgoOd2FzbV9ieXRlX2NvZGUYAiABKAxCEOLeHwxXQVNNQnl0ZUNvZGVSDHdhc21CeXRlQ29kZRJVChZpbnN0YW50aWF0ZV9wZXJtaXNzaW9uGAUgASgLMh4uY29zbXdhc20ud2FzbS52MS5BY2Nlc3NDb25maWdSFWluc3RhbnRpYXRlUGVybWlzc2lvbkoECAMQBEoECAQQBQ==');
@$core.Deprecated('Use msgStoreCodeResponseDescriptor instead')
const MsgStoreCodeResponse$json = const {
  '1': 'MsgStoreCodeResponse',
  '2': const [
    const {'1': 'code_id', '3': 1, '4': 1, '5': 4, '8': const {}, '10': 'codeId'},
  ],
};

/// Descriptor for `MsgStoreCodeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgStoreCodeResponseDescriptor = $convert.base64Decode('ChRNc2dTdG9yZUNvZGVSZXNwb25zZRIjCgdjb2RlX2lkGAEgASgEQgri3h8GQ29kZUlEUgZjb2RlSWQ=');
@$core.Deprecated('Use msgInstantiateContractDescriptor instead')
const MsgInstantiateContract$json = const {
  '1': 'MsgInstantiateContract',
  '2': const [
    const {'1': 'sender', '3': 1, '4': 1, '5': 9, '10': 'sender'},
    const {'1': 'admin', '3': 2, '4': 1, '5': 9, '10': 'admin'},
    const {'1': 'code_id', '3': 3, '4': 1, '5': 4, '8': const {}, '10': 'codeId'},
    const {'1': 'label', '3': 4, '4': 1, '5': 9, '10': 'label'},
    const {'1': 'msg', '3': 5, '4': 1, '5': 12, '8': const {}, '10': 'msg'},
    const {'1': 'funds', '3': 6, '4': 3, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': const {}, '10': 'funds'},
  ],
};

/// Descriptor for `MsgInstantiateContract`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgInstantiateContractDescriptor = $convert.base64Decode('ChZNc2dJbnN0YW50aWF0ZUNvbnRyYWN0EhYKBnNlbmRlchgBIAEoCVIGc2VuZGVyEhQKBWFkbWluGAIgASgJUgVhZG1pbhIjCgdjb2RlX2lkGAMgASgEQgri3h8GQ29kZUlEUgZjb2RlSWQSFAoFbGFiZWwYBCABKAlSBWxhYmVsEigKA21zZxgFIAEoDEIW+t4fElJhd0NvbnRyYWN0TWVzc2FnZVIDbXNnEmEKBWZ1bmRzGAYgAygLMhkuY29zbW9zLmJhc2UudjFiZXRhMS5Db2luQjDI3h8Aqt8fKGdpdGh1Yi5jb20vY29zbW9zL2Nvc21vcy1zZGsvdHlwZXMuQ29pbnNSBWZ1bmRz');
@$core.Deprecated('Use msgInstantiateContractResponseDescriptor instead')
const MsgInstantiateContractResponse$json = const {
  '1': 'MsgInstantiateContractResponse',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'data', '3': 2, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `MsgInstantiateContractResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgInstantiateContractResponseDescriptor = $convert.base64Decode('Ch5Nc2dJbnN0YW50aWF0ZUNvbnRyYWN0UmVzcG9uc2USGAoHYWRkcmVzcxgBIAEoCVIHYWRkcmVzcxISCgRkYXRhGAIgASgMUgRkYXRh');
@$core.Deprecated('Use msgExecuteContractDescriptor instead')
const MsgExecuteContract$json = const {
  '1': 'MsgExecuteContract',
  '2': const [
    const {'1': 'sender', '3': 1, '4': 1, '5': 9, '10': 'sender'},
    const {'1': 'contract', '3': 2, '4': 1, '5': 9, '10': 'contract'},
    const {'1': 'msg', '3': 3, '4': 1, '5': 12, '8': const {}, '10': 'msg'},
    const {'1': 'funds', '3': 5, '4': 3, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': const {}, '10': 'funds'},
  ],
};

/// Descriptor for `MsgExecuteContract`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgExecuteContractDescriptor = $convert.base64Decode('ChJNc2dFeGVjdXRlQ29udHJhY3QSFgoGc2VuZGVyGAEgASgJUgZzZW5kZXISGgoIY29udHJhY3QYAiABKAlSCGNvbnRyYWN0EigKA21zZxgDIAEoDEIW+t4fElJhd0NvbnRyYWN0TWVzc2FnZVIDbXNnEmEKBWZ1bmRzGAUgAygLMhkuY29zbW9zLmJhc2UudjFiZXRhMS5Db2luQjDI3h8Aqt8fKGdpdGh1Yi5jb20vY29zbW9zL2Nvc21vcy1zZGsvdHlwZXMuQ29pbnNSBWZ1bmRz');
@$core.Deprecated('Use msgExecuteContractResponseDescriptor instead')
const MsgExecuteContractResponse$json = const {
  '1': 'MsgExecuteContractResponse',
  '2': const [
    const {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `MsgExecuteContractResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgExecuteContractResponseDescriptor = $convert.base64Decode('ChpNc2dFeGVjdXRlQ29udHJhY3RSZXNwb25zZRISCgRkYXRhGAEgASgMUgRkYXRh');
@$core.Deprecated('Use msgMigrateContractDescriptor instead')
const MsgMigrateContract$json = const {
  '1': 'MsgMigrateContract',
  '2': const [
    const {'1': 'sender', '3': 1, '4': 1, '5': 9, '10': 'sender'},
    const {'1': 'contract', '3': 2, '4': 1, '5': 9, '10': 'contract'},
    const {'1': 'code_id', '3': 3, '4': 1, '5': 4, '8': const {}, '10': 'codeId'},
    const {'1': 'msg', '3': 4, '4': 1, '5': 12, '8': const {}, '10': 'msg'},
  ],
};

/// Descriptor for `MsgMigrateContract`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgMigrateContractDescriptor = $convert.base64Decode('ChJNc2dNaWdyYXRlQ29udHJhY3QSFgoGc2VuZGVyGAEgASgJUgZzZW5kZXISGgoIY29udHJhY3QYAiABKAlSCGNvbnRyYWN0EiMKB2NvZGVfaWQYAyABKARCCuLeHwZDb2RlSURSBmNvZGVJZBIoCgNtc2cYBCABKAxCFvreHxJSYXdDb250cmFjdE1lc3NhZ2VSA21zZw==');
@$core.Deprecated('Use msgMigrateContractResponseDescriptor instead')
const MsgMigrateContractResponse$json = const {
  '1': 'MsgMigrateContractResponse',
  '2': const [
    const {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `MsgMigrateContractResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgMigrateContractResponseDescriptor = $convert.base64Decode('ChpNc2dNaWdyYXRlQ29udHJhY3RSZXNwb25zZRISCgRkYXRhGAEgASgMUgRkYXRh');
@$core.Deprecated('Use msgUpdateAdminDescriptor instead')
const MsgUpdateAdmin$json = const {
  '1': 'MsgUpdateAdmin',
  '2': const [
    const {'1': 'sender', '3': 1, '4': 1, '5': 9, '10': 'sender'},
    const {'1': 'new_admin', '3': 2, '4': 1, '5': 9, '10': 'newAdmin'},
    const {'1': 'contract', '3': 3, '4': 1, '5': 9, '10': 'contract'},
  ],
};

/// Descriptor for `MsgUpdateAdmin`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpdateAdminDescriptor = $convert.base64Decode('Cg5Nc2dVcGRhdGVBZG1pbhIWCgZzZW5kZXIYASABKAlSBnNlbmRlchIbCgluZXdfYWRtaW4YAiABKAlSCG5ld0FkbWluEhoKCGNvbnRyYWN0GAMgASgJUghjb250cmFjdA==');
@$core.Deprecated('Use msgUpdateAdminResponseDescriptor instead')
const MsgUpdateAdminResponse$json = const {
  '1': 'MsgUpdateAdminResponse',
};

/// Descriptor for `MsgUpdateAdminResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpdateAdminResponseDescriptor = $convert.base64Decode('ChZNc2dVcGRhdGVBZG1pblJlc3BvbnNl');
@$core.Deprecated('Use msgClearAdminDescriptor instead')
const MsgClearAdmin$json = const {
  '1': 'MsgClearAdmin',
  '2': const [
    const {'1': 'sender', '3': 1, '4': 1, '5': 9, '10': 'sender'},
    const {'1': 'contract', '3': 3, '4': 1, '5': 9, '10': 'contract'},
  ],
};

/// Descriptor for `MsgClearAdmin`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgClearAdminDescriptor = $convert.base64Decode('Cg1Nc2dDbGVhckFkbWluEhYKBnNlbmRlchgBIAEoCVIGc2VuZGVyEhoKCGNvbnRyYWN0GAMgASgJUghjb250cmFjdA==');
@$core.Deprecated('Use msgClearAdminResponseDescriptor instead')
const MsgClearAdminResponse$json = const {
  '1': 'MsgClearAdminResponse',
};

/// Descriptor for `MsgClearAdminResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgClearAdminResponseDescriptor = $convert.base64Decode('ChVNc2dDbGVhckFkbWluUmVzcG9uc2U=');
