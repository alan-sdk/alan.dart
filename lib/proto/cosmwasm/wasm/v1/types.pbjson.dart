///
//  Generated code. Do not modify.
//  source: cosmwasm/wasm/v1/types.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use accessTypeDescriptor instead')
const AccessType$json = const {
  '1': 'AccessType',
  '2': const [
    const {'1': 'ACCESS_TYPE_UNSPECIFIED', '2': 0, '3': const {}},
    const {'1': 'ACCESS_TYPE_NOBODY', '2': 1, '3': const {}},
    const {'1': 'ACCESS_TYPE_ONLY_ADDRESS', '2': 2, '3': const {}},
    const {'1': 'ACCESS_TYPE_EVERYBODY', '2': 3, '3': const {}},
  ],
  '3': const {},
};

/// Descriptor for `AccessType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List accessTypeDescriptor = $convert.base64Decode('CgpBY2Nlc3NUeXBlEjYKF0FDQ0VTU19UWVBFX1VOU1BFQ0lGSUVEEAAaGYqdIBVBY2Nlc3NUeXBlVW5zcGVjaWZpZWQSLAoSQUNDRVNTX1RZUEVfTk9CT0RZEAEaFIqdIBBBY2Nlc3NUeXBlTm9ib2R5EjcKGEFDQ0VTU19UWVBFX09OTFlfQUREUkVTUxACGhmKnSAVQWNjZXNzVHlwZU9ubHlBZGRyZXNzEjIKFUFDQ0VTU19UWVBFX0VWRVJZQk9EWRADGheKnSATQWNjZXNzVHlwZUV2ZXJ5Ym9keRoIiKMeAKikHgA=');
@$core.Deprecated('Use contractCodeHistoryOperationTypeDescriptor instead')
const ContractCodeHistoryOperationType$json = const {
  '1': 'ContractCodeHistoryOperationType',
  '2': const [
    const {'1': 'CONTRACT_CODE_HISTORY_OPERATION_TYPE_UNSPECIFIED', '2': 0, '3': const {}},
    const {'1': 'CONTRACT_CODE_HISTORY_OPERATION_TYPE_INIT', '2': 1, '3': const {}},
    const {'1': 'CONTRACT_CODE_HISTORY_OPERATION_TYPE_MIGRATE', '2': 2, '3': const {}},
    const {'1': 'CONTRACT_CODE_HISTORY_OPERATION_TYPE_GENESIS', '2': 3, '3': const {}},
  ],
  '3': const {},
};

/// Descriptor for `ContractCodeHistoryOperationType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List contractCodeHistoryOperationTypeDescriptor = $convert.base64Decode('CiBDb250cmFjdENvZGVIaXN0b3J5T3BlcmF0aW9uVHlwZRJlCjBDT05UUkFDVF9DT0RFX0hJU1RPUllfT1BFUkFUSU9OX1RZUEVfVU5TUEVDSUZJRUQQABovip0gK0NvbnRyYWN0Q29kZUhpc3RvcnlPcGVyYXRpb25UeXBlVW5zcGVjaWZpZWQSVwopQ09OVFJBQ1RfQ09ERV9ISVNUT1JZX09QRVJBVElPTl9UWVBFX0lOSVQQARooip0gJENvbnRyYWN0Q29kZUhpc3RvcnlPcGVyYXRpb25UeXBlSW5pdBJdCixDT05UUkFDVF9DT0RFX0hJU1RPUllfT1BFUkFUSU9OX1RZUEVfTUlHUkFURRACGiuKnSAnQ29udHJhY3RDb2RlSGlzdG9yeU9wZXJhdGlvblR5cGVNaWdyYXRlEl0KLENPTlRSQUNUX0NPREVfSElTVE9SWV9PUEVSQVRJT05fVFlQRV9HRU5FU0lTEAMaK4qdICdDb250cmFjdENvZGVIaXN0b3J5T3BlcmF0aW9uVHlwZUdlbmVzaXMaBIijHgA=');
@$core.Deprecated('Use accessTypeParamDescriptor instead')
const AccessTypeParam$json = const {
  '1': 'AccessTypeParam',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 14, '6': '.cosmwasm.wasm.v1.AccessType', '8': const {}, '10': 'value'},
  ],
  '7': const {},
};

/// Descriptor for `AccessTypeParam`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accessTypeParamDescriptor = $convert.base64Decode('Cg9BY2Nlc3NUeXBlUGFyYW0SRAoFdmFsdWUYASABKA4yHC5jb3Ntd2FzbS53YXNtLnYxLkFjY2Vzc1R5cGVCEPLeHwx5YW1sOiJ2YWx1ZSJSBXZhbHVlOgSYoB8B');
@$core.Deprecated('Use accessConfigDescriptor instead')
const AccessConfig$json = const {
  '1': 'AccessConfig',
  '2': const [
    const {'1': 'permission', '3': 1, '4': 1, '5': 14, '6': '.cosmwasm.wasm.v1.AccessType', '8': const {}, '10': 'permission'},
    const {'1': 'address', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'address'},
  ],
  '7': const {},
};

/// Descriptor for `AccessConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accessConfigDescriptor = $convert.base64Decode('CgxBY2Nlc3NDb25maWcSUwoKcGVybWlzc2lvbhgBIAEoDjIcLmNvc213YXNtLndhc20udjEuQWNjZXNzVHlwZUIV8t4fEXlhbWw6InBlcm1pc3Npb24iUgpwZXJtaXNzaW9uEiwKB2FkZHJlc3MYAiABKAlCEvLeHw55YW1sOiJhZGRyZXNzIlIHYWRkcmVzczoEmKAfAQ==');
@$core.Deprecated('Use paramsDescriptor instead')
const Params$json = const {
  '1': 'Params',
  '2': const [
    const {'1': 'code_upload_access', '3': 1, '4': 1, '5': 11, '6': '.cosmwasm.wasm.v1.AccessConfig', '8': const {}, '10': 'codeUploadAccess'},
    const {'1': 'instantiate_default_permission', '3': 2, '4': 1, '5': 14, '6': '.cosmwasm.wasm.v1.AccessType', '8': const {}, '10': 'instantiateDefaultPermission'},
  ],
  '7': const {},
};

/// Descriptor for `Params`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paramsDescriptor = $convert.base64Decode('CgZQYXJhbXMSbwoSY29kZV91cGxvYWRfYWNjZXNzGAEgASgLMh4uY29zbXdhc20ud2FzbS52MS5BY2Nlc3NDb25maWdCIcjeHwDy3h8ZeWFtbDoiY29kZV91cGxvYWRfYWNjZXNzIlIQY29kZVVwbG9hZEFjY2VzcxKNAQoeaW5zdGFudGlhdGVfZGVmYXVsdF9wZXJtaXNzaW9uGAIgASgOMhwuY29zbXdhc20ud2FzbS52MS5BY2Nlc3NUeXBlQiny3h8leWFtbDoiaW5zdGFudGlhdGVfZGVmYXVsdF9wZXJtaXNzaW9uIlIcaW5zdGFudGlhdGVEZWZhdWx0UGVybWlzc2lvbjoEmKAfAA==');
@$core.Deprecated('Use codeInfoDescriptor instead')
const CodeInfo$json = const {
  '1': 'CodeInfo',
  '2': const [
    const {'1': 'code_hash', '3': 1, '4': 1, '5': 12, '10': 'codeHash'},
    const {'1': 'creator', '3': 2, '4': 1, '5': 9, '10': 'creator'},
    const {'1': 'instantiate_config', '3': 5, '4': 1, '5': 11, '6': '.cosmwasm.wasm.v1.AccessConfig', '8': const {}, '10': 'instantiateConfig'},
  ],
  '9': const [
    const {'1': 3, '2': 4},
    const {'1': 4, '2': 5},
  ],
};

/// Descriptor for `CodeInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List codeInfoDescriptor = $convert.base64Decode('CghDb2RlSW5mbxIbCgljb2RlX2hhc2gYASABKAxSCGNvZGVIYXNoEhgKB2NyZWF0b3IYAiABKAlSB2NyZWF0b3ISUwoSaW5zdGFudGlhdGVfY29uZmlnGAUgASgLMh4uY29zbXdhc20ud2FzbS52MS5BY2Nlc3NDb25maWdCBMjeHwBSEWluc3RhbnRpYXRlQ29uZmlnSgQIAxAESgQIBBAF');
@$core.Deprecated('Use contractInfoDescriptor instead')
const ContractInfo$json = const {
  '1': 'ContractInfo',
  '2': const [
    const {'1': 'code_id', '3': 1, '4': 1, '5': 4, '8': const {}, '10': 'codeId'},
    const {'1': 'creator', '3': 2, '4': 1, '5': 9, '10': 'creator'},
    const {'1': 'admin', '3': 3, '4': 1, '5': 9, '10': 'admin'},
    const {'1': 'label', '3': 4, '4': 1, '5': 9, '10': 'label'},
    const {'1': 'created', '3': 5, '4': 1, '5': 11, '6': '.cosmwasm.wasm.v1.AbsoluteTxPosition', '10': 'created'},
    const {'1': 'ibc_port_id', '3': 6, '4': 1, '5': 9, '8': const {}, '10': 'ibcPortId'},
    const {'1': 'extension', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Any', '8': const {}, '10': 'extension'},
  ],
  '7': const {},
};

/// Descriptor for `ContractInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contractInfoDescriptor = $convert.base64Decode('CgxDb250cmFjdEluZm8SIwoHY29kZV9pZBgBIAEoBEIK4t4fBkNvZGVJRFIGY29kZUlkEhgKB2NyZWF0b3IYAiABKAlSB2NyZWF0b3ISFAoFYWRtaW4YAyABKAlSBWFkbWluEhQKBWxhYmVsGAQgASgJUgVsYWJlbBI+CgdjcmVhdGVkGAUgASgLMiQuY29zbXdhc20ud2FzbS52MS5BYnNvbHV0ZVR4UG9zaXRpb25SB2NyZWF0ZWQSLQoLaWJjX3BvcnRfaWQYBiABKAlCDeLeHwlJQkNQb3J0SURSCWliY1BvcnRJZBJNCglleHRlbnNpb24YByABKAsyFC5nb29nbGUucHJvdG9idWYuQW55QhnKtC0VQ29udHJhY3RJbmZvRXh0ZW5zaW9uUglleHRlbnNpb246BOigHwE=');
@$core.Deprecated('Use contractCodeHistoryEntryDescriptor instead')
const ContractCodeHistoryEntry$json = const {
  '1': 'ContractCodeHistoryEntry',
  '2': const [
    const {'1': 'operation', '3': 1, '4': 1, '5': 14, '6': '.cosmwasm.wasm.v1.ContractCodeHistoryOperationType', '10': 'operation'},
    const {'1': 'code_id', '3': 2, '4': 1, '5': 4, '8': const {}, '10': 'codeId'},
    const {'1': 'updated', '3': 3, '4': 1, '5': 11, '6': '.cosmwasm.wasm.v1.AbsoluteTxPosition', '10': 'updated'},
    const {'1': 'msg', '3': 4, '4': 1, '5': 12, '8': const {}, '10': 'msg'},
  ],
};

/// Descriptor for `ContractCodeHistoryEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contractCodeHistoryEntryDescriptor = $convert.base64Decode('ChhDb250cmFjdENvZGVIaXN0b3J5RW50cnkSUAoJb3BlcmF0aW9uGAEgASgOMjIuY29zbXdhc20ud2FzbS52MS5Db250cmFjdENvZGVIaXN0b3J5T3BlcmF0aW9uVHlwZVIJb3BlcmF0aW9uEiMKB2NvZGVfaWQYAiABKARCCuLeHwZDb2RlSURSBmNvZGVJZBI+Cgd1cGRhdGVkGAMgASgLMiQuY29zbXdhc20ud2FzbS52MS5BYnNvbHV0ZVR4UG9zaXRpb25SB3VwZGF0ZWQSKAoDbXNnGAQgASgMQhb63h8SUmF3Q29udHJhY3RNZXNzYWdlUgNtc2c=');
@$core.Deprecated('Use absoluteTxPositionDescriptor instead')
const AbsoluteTxPosition$json = const {
  '1': 'AbsoluteTxPosition',
  '2': const [
    const {'1': 'block_height', '3': 1, '4': 1, '5': 4, '10': 'blockHeight'},
    const {'1': 'tx_index', '3': 2, '4': 1, '5': 4, '10': 'txIndex'},
  ],
};

/// Descriptor for `AbsoluteTxPosition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List absoluteTxPositionDescriptor = $convert.base64Decode('ChJBYnNvbHV0ZVR4UG9zaXRpb24SIQoMYmxvY2tfaGVpZ2h0GAEgASgEUgtibG9ja0hlaWdodBIZCgh0eF9pbmRleBgCIAEoBFIHdHhJbmRleA==');
@$core.Deprecated('Use modelDescriptor instead')
const Model$json = const {
  '1': 'Model',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 12, '8': const {}, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
};

/// Descriptor for `Model`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modelDescriptor = $convert.base64Decode('CgVNb2RlbBJKCgNrZXkYASABKAxCOPreHzRnaXRodWIuY29tL3RlbmRlcm1pbnQvdGVuZGVybWludC9saWJzL2J5dGVzLkhleEJ5dGVzUgNrZXkSFAoFdmFsdWUYAiABKAxSBXZhbHVl');
