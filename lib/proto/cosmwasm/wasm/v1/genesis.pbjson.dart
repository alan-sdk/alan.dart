///
//  Generated code. Do not modify.
//  source: cosmwasm/wasm/v1/genesis.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use genesisStateDescriptor instead')
const GenesisState$json = const {
  '1': 'GenesisState',
  '2': const [
    const {'1': 'params', '3': 1, '4': 1, '5': 11, '6': '.cosmwasm.wasm.v1.Params', '8': const {}, '10': 'params'},
    const {'1': 'codes', '3': 2, '4': 3, '5': 11, '6': '.cosmwasm.wasm.v1.Code', '8': const {}, '10': 'codes'},
    const {'1': 'contracts', '3': 3, '4': 3, '5': 11, '6': '.cosmwasm.wasm.v1.Contract', '8': const {}, '10': 'contracts'},
    const {'1': 'sequences', '3': 4, '4': 3, '5': 11, '6': '.cosmwasm.wasm.v1.Sequence', '8': const {}, '10': 'sequences'},
    const {'1': 'gen_msgs', '3': 5, '4': 3, '5': 11, '6': '.cosmwasm.wasm.v1.GenesisState.GenMsgs', '8': const {}, '10': 'genMsgs'},
  ],
  '3': const [GenesisState_GenMsgs$json],
};

@$core.Deprecated('Use genesisStateDescriptor instead')
const GenesisState_GenMsgs$json = const {
  '1': 'GenMsgs',
  '2': const [
    const {'1': 'store_code', '3': 1, '4': 1, '5': 11, '6': '.cosmwasm.wasm.v1.MsgStoreCode', '9': 0, '10': 'storeCode'},
    const {'1': 'instantiate_contract', '3': 2, '4': 1, '5': 11, '6': '.cosmwasm.wasm.v1.MsgInstantiateContract', '9': 0, '10': 'instantiateContract'},
    const {'1': 'execute_contract', '3': 3, '4': 1, '5': 11, '6': '.cosmwasm.wasm.v1.MsgExecuteContract', '9': 0, '10': 'executeContract'},
  ],
  '8': const [
    const {'1': 'sum'},
  ],
};

/// Descriptor for `GenesisState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genesisStateDescriptor = $convert.base64Decode('CgxHZW5lc2lzU3RhdGUSNgoGcGFyYW1zGAEgASgLMhguY29zbXdhc20ud2FzbS52MS5QYXJhbXNCBMjeHwBSBnBhcmFtcxJFCgVjb2RlcxgCIAMoCzIWLmNvc213YXNtLndhc20udjEuQ29kZUIXyN4fAOreHw9jb2RlcyxvbWl0ZW1wdHlSBWNvZGVzElUKCWNvbnRyYWN0cxgDIAMoCzIaLmNvc213YXNtLndhc20udjEuQ29udHJhY3RCG8jeHwDq3h8TY29udHJhY3RzLG9taXRlbXB0eVIJY29udHJhY3RzElUKCXNlcXVlbmNlcxgEIAMoCzIaLmNvc213YXNtLndhc20udjEuU2VxdWVuY2VCG8jeHwDq3h8Tc2VxdWVuY2VzLG9taXRlbXB0eVIJc2VxdWVuY2VzEl0KCGdlbl9tc2dzGAUgAygLMiYuY29zbXdhc20ud2FzbS52MS5HZW5lc2lzU3RhdGUuR2VuTXNnc0IayN4fAOreHxJnZW5fbXNncyxvbWl0ZW1wdHlSB2dlbk1zZ3MagwIKB0dlbk1zZ3MSPwoKc3RvcmVfY29kZRgBIAEoCzIeLmNvc213YXNtLndhc20udjEuTXNnU3RvcmVDb2RlSABSCXN0b3JlQ29kZRJdChRpbnN0YW50aWF0ZV9jb250cmFjdBgCIAEoCzIoLmNvc213YXNtLndhc20udjEuTXNnSW5zdGFudGlhdGVDb250cmFjdEgAUhNpbnN0YW50aWF0ZUNvbnRyYWN0ElEKEGV4ZWN1dGVfY29udHJhY3QYAyABKAsyJC5jb3Ntd2FzbS53YXNtLnYxLk1zZ0V4ZWN1dGVDb250cmFjdEgAUg9leGVjdXRlQ29udHJhY3RCBQoDc3Vt');
@$core.Deprecated('Use codeDescriptor instead')
const Code$json = const {
  '1': 'Code',
  '2': const [
    const {'1': 'code_id', '3': 1, '4': 1, '5': 4, '8': const {}, '10': 'codeId'},
    const {'1': 'code_info', '3': 2, '4': 1, '5': 11, '6': '.cosmwasm.wasm.v1.CodeInfo', '8': const {}, '10': 'codeInfo'},
    const {'1': 'code_bytes', '3': 3, '4': 1, '5': 12, '10': 'codeBytes'},
    const {'1': 'pinned', '3': 4, '4': 1, '5': 8, '10': 'pinned'},
  ],
};

/// Descriptor for `Code`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List codeDescriptor = $convert.base64Decode('CgRDb2RlEiMKB2NvZGVfaWQYASABKARCCuLeHwZDb2RlSURSBmNvZGVJZBI9Cgljb2RlX2luZm8YAiABKAsyGi5jb3Ntd2FzbS53YXNtLnYxLkNvZGVJbmZvQgTI3h8AUghjb2RlSW5mbxIdCgpjb2RlX2J5dGVzGAMgASgMUgljb2RlQnl0ZXMSFgoGcGlubmVkGAQgASgIUgZwaW5uZWQ=');
@$core.Deprecated('Use contractDescriptor instead')
const Contract$json = const {
  '1': 'Contract',
  '2': const [
    const {'1': 'contract_address', '3': 1, '4': 1, '5': 9, '10': 'contractAddress'},
    const {'1': 'contract_info', '3': 2, '4': 1, '5': 11, '6': '.cosmwasm.wasm.v1.ContractInfo', '8': const {}, '10': 'contractInfo'},
    const {'1': 'contract_state', '3': 3, '4': 3, '5': 11, '6': '.cosmwasm.wasm.v1.Model', '8': const {}, '10': 'contractState'},
  ],
};

/// Descriptor for `Contract`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contractDescriptor = $convert.base64Decode('CghDb250cmFjdBIpChBjb250cmFjdF9hZGRyZXNzGAEgASgJUg9jb250cmFjdEFkZHJlc3MSSQoNY29udHJhY3RfaW5mbxgCIAEoCzIeLmNvc213YXNtLndhc20udjEuQ29udHJhY3RJbmZvQgTI3h8AUgxjb250cmFjdEluZm8SRAoOY29udHJhY3Rfc3RhdGUYAyADKAsyFy5jb3Ntd2FzbS53YXNtLnYxLk1vZGVsQgTI3h8AUg1jb250cmFjdFN0YXRl');
@$core.Deprecated('Use sequenceDescriptor instead')
const Sequence$json = const {
  '1': 'Sequence',
  '2': const [
    const {'1': 'id_key', '3': 1, '4': 1, '5': 12, '8': const {}, '10': 'idKey'},
    const {'1': 'value', '3': 2, '4': 1, '5': 4, '10': 'value'},
  ],
};

/// Descriptor for `Sequence`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sequenceDescriptor = $convert.base64Decode('CghTZXF1ZW5jZRIgCgZpZF9rZXkYASABKAxCCeLeHwVJREtleVIFaWRLZXkSFAoFdmFsdWUYAiABKARSBXZhbHVl');
