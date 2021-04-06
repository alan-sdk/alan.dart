///
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use hashOpDescriptor instead')
const HashOp$json = const {
  '1': 'HashOp',
  '2': const [
    const {'1': 'NO_HASH', '2': 0},
    const {'1': 'SHA256', '2': 1},
    const {'1': 'SHA512', '2': 2},
    const {'1': 'KECCAK', '2': 3},
    const {'1': 'RIPEMD160', '2': 4},
    const {'1': 'BITCOIN', '2': 5},
  ],
};

/// Descriptor for `HashOp`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List hashOpDescriptor = $convert.base64Decode('CgZIYXNoT3ASCwoHTk9fSEFTSBAAEgoKBlNIQTI1NhABEgoKBlNIQTUxMhACEgoKBktFQ0NBSxADEg0KCVJJUEVNRDE2MBAEEgsKB0JJVENPSU4QBQ==');
@$core.Deprecated('Use lengthOpDescriptor instead')
const LengthOp$json = const {
  '1': 'LengthOp',
  '2': const [
    const {'1': 'NO_PREFIX', '2': 0},
    const {'1': 'VAR_PROTO', '2': 1},
    const {'1': 'VAR_RLP', '2': 2},
    const {'1': 'FIXED32_BIG', '2': 3},
    const {'1': 'FIXED32_LITTLE', '2': 4},
    const {'1': 'FIXED64_BIG', '2': 5},
    const {'1': 'FIXED64_LITTLE', '2': 6},
    const {'1': 'REQUIRE_32_BYTES', '2': 7},
    const {'1': 'REQUIRE_64_BYTES', '2': 8},
  ],
};

/// Descriptor for `LengthOp`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List lengthOpDescriptor = $convert.base64Decode('CghMZW5ndGhPcBINCglOT19QUkVGSVgQABINCglWQVJfUFJPVE8QARILCgdWQVJfUkxQEAISDwoLRklYRUQzMl9CSUcQAxISCg5GSVhFRDMyX0xJVFRMRRAEEg8KC0ZJWEVENjRfQklHEAUSEgoORklYRUQ2NF9MSVRUTEUQBhIUChBSRVFVSVJFXzMyX0JZVEVTEAcSFAoQUkVRVUlSRV82NF9CWVRFUxAI');
@$core.Deprecated('Use existenceProofDescriptor instead')
const ExistenceProof$json = const {
  '1': 'ExistenceProof',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 12, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
    const {'1': 'leaf', '3': 3, '4': 1, '5': 11, '6': '.ics23.LeafOp', '10': 'leaf'},
    const {'1': 'path', '3': 4, '4': 3, '5': 11, '6': '.ics23.InnerOp', '10': 'path'},
  ],
};

/// Descriptor for `ExistenceProof`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List existenceProofDescriptor = $convert.base64Decode('Cg5FeGlzdGVuY2VQcm9vZhIQCgNrZXkYASABKAxSA2tleRIUCgV2YWx1ZRgCIAEoDFIFdmFsdWUSIQoEbGVhZhgDIAEoCzINLmljczIzLkxlYWZPcFIEbGVhZhIiCgRwYXRoGAQgAygLMg4uaWNzMjMuSW5uZXJPcFIEcGF0aA==');
@$core.Deprecated('Use nonExistenceProofDescriptor instead')
const NonExistenceProof$json = const {
  '1': 'NonExistenceProof',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 12, '10': 'key'},
    const {'1': 'left', '3': 2, '4': 1, '5': 11, '6': '.ics23.ExistenceProof', '10': 'left'},
    const {'1': 'right', '3': 3, '4': 1, '5': 11, '6': '.ics23.ExistenceProof', '10': 'right'},
  ],
};

/// Descriptor for `NonExistenceProof`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nonExistenceProofDescriptor = $convert.base64Decode('ChFOb25FeGlzdGVuY2VQcm9vZhIQCgNrZXkYASABKAxSA2tleRIpCgRsZWZ0GAIgASgLMhUuaWNzMjMuRXhpc3RlbmNlUHJvb2ZSBGxlZnQSKwoFcmlnaHQYAyABKAsyFS5pY3MyMy5FeGlzdGVuY2VQcm9vZlIFcmlnaHQ=');
@$core.Deprecated('Use commitmentProofDescriptor instead')
const CommitmentProof$json = const {
  '1': 'CommitmentProof',
  '2': const [
    const {'1': 'exist', '3': 1, '4': 1, '5': 11, '6': '.ics23.ExistenceProof', '9': 0, '10': 'exist'},
    const {'1': 'nonexist', '3': 2, '4': 1, '5': 11, '6': '.ics23.NonExistenceProof', '9': 0, '10': 'nonexist'},
    const {'1': 'batch', '3': 3, '4': 1, '5': 11, '6': '.ics23.BatchProof', '9': 0, '10': 'batch'},
    const {'1': 'compressed', '3': 4, '4': 1, '5': 11, '6': '.ics23.CompressedBatchProof', '9': 0, '10': 'compressed'},
  ],
  '8': const [
    const {'1': 'proof'},
  ],
};

/// Descriptor for `CommitmentProof`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commitmentProofDescriptor = $convert.base64Decode('Cg9Db21taXRtZW50UHJvb2YSLQoFZXhpc3QYASABKAsyFS5pY3MyMy5FeGlzdGVuY2VQcm9vZkgAUgVleGlzdBI2Cghub25leGlzdBgCIAEoCzIYLmljczIzLk5vbkV4aXN0ZW5jZVByb29mSABSCG5vbmV4aXN0EikKBWJhdGNoGAMgASgLMhEuaWNzMjMuQmF0Y2hQcm9vZkgAUgViYXRjaBI9Cgpjb21wcmVzc2VkGAQgASgLMhsuaWNzMjMuQ29tcHJlc3NlZEJhdGNoUHJvb2ZIAFIKY29tcHJlc3NlZEIHCgVwcm9vZg==');
@$core.Deprecated('Use leafOpDescriptor instead')
const LeafOp$json = const {
  '1': 'LeafOp',
  '2': const [
    const {'1': 'hash', '3': 1, '4': 1, '5': 14, '6': '.ics23.HashOp', '10': 'hash'},
    const {'1': 'prehash_key', '3': 2, '4': 1, '5': 14, '6': '.ics23.HashOp', '10': 'prehashKey'},
    const {'1': 'prehash_value', '3': 3, '4': 1, '5': 14, '6': '.ics23.HashOp', '10': 'prehashValue'},
    const {'1': 'length', '3': 4, '4': 1, '5': 14, '6': '.ics23.LengthOp', '10': 'length'},
    const {'1': 'prefix', '3': 5, '4': 1, '5': 12, '10': 'prefix'},
  ],
};

/// Descriptor for `LeafOp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leafOpDescriptor = $convert.base64Decode('CgZMZWFmT3ASIQoEaGFzaBgBIAEoDjINLmljczIzLkhhc2hPcFIEaGFzaBIuCgtwcmVoYXNoX2tleRgCIAEoDjINLmljczIzLkhhc2hPcFIKcHJlaGFzaEtleRIyCg1wcmVoYXNoX3ZhbHVlGAMgASgOMg0uaWNzMjMuSGFzaE9wUgxwcmVoYXNoVmFsdWUSJwoGbGVuZ3RoGAQgASgOMg8uaWNzMjMuTGVuZ3RoT3BSBmxlbmd0aBIWCgZwcmVmaXgYBSABKAxSBnByZWZpeA==');
@$core.Deprecated('Use innerOpDescriptor instead')
const InnerOp$json = const {
  '1': 'InnerOp',
  '2': const [
    const {'1': 'hash', '3': 1, '4': 1, '5': 14, '6': '.ics23.HashOp', '10': 'hash'},
    const {'1': 'prefix', '3': 2, '4': 1, '5': 12, '10': 'prefix'},
    const {'1': 'suffix', '3': 3, '4': 1, '5': 12, '10': 'suffix'},
  ],
};

/// Descriptor for `InnerOp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List innerOpDescriptor = $convert.base64Decode('CgdJbm5lck9wEiEKBGhhc2gYASABKA4yDS5pY3MyMy5IYXNoT3BSBGhhc2gSFgoGcHJlZml4GAIgASgMUgZwcmVmaXgSFgoGc3VmZml4GAMgASgMUgZzdWZmaXg=');
@$core.Deprecated('Use proofSpecDescriptor instead')
const ProofSpec$json = const {
  '1': 'ProofSpec',
  '2': const [
    const {'1': 'leaf_spec', '3': 1, '4': 1, '5': 11, '6': '.ics23.LeafOp', '10': 'leafSpec'},
    const {'1': 'inner_spec', '3': 2, '4': 1, '5': 11, '6': '.ics23.InnerSpec', '10': 'innerSpec'},
    const {'1': 'max_depth', '3': 3, '4': 1, '5': 5, '10': 'maxDepth'},
    const {'1': 'min_depth', '3': 4, '4': 1, '5': 5, '10': 'minDepth'},
  ],
};

/// Descriptor for `ProofSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List proofSpecDescriptor = $convert.base64Decode('CglQcm9vZlNwZWMSKgoJbGVhZl9zcGVjGAEgASgLMg0uaWNzMjMuTGVhZk9wUghsZWFmU3BlYxIvCgppbm5lcl9zcGVjGAIgASgLMhAuaWNzMjMuSW5uZXJTcGVjUglpbm5lclNwZWMSGwoJbWF4X2RlcHRoGAMgASgFUghtYXhEZXB0aBIbCgltaW5fZGVwdGgYBCABKAVSCG1pbkRlcHRo');
@$core.Deprecated('Use innerSpecDescriptor instead')
const InnerSpec$json = const {
  '1': 'InnerSpec',
  '2': const [
    const {'1': 'child_order', '3': 1, '4': 3, '5': 5, '10': 'childOrder'},
    const {'1': 'child_size', '3': 2, '4': 1, '5': 5, '10': 'childSize'},
    const {'1': 'min_prefix_length', '3': 3, '4': 1, '5': 5, '10': 'minPrefixLength'},
    const {'1': 'max_prefix_length', '3': 4, '4': 1, '5': 5, '10': 'maxPrefixLength'},
    const {'1': 'empty_child', '3': 5, '4': 1, '5': 12, '10': 'emptyChild'},
    const {'1': 'hash', '3': 6, '4': 1, '5': 14, '6': '.ics23.HashOp', '10': 'hash'},
  ],
};

/// Descriptor for `InnerSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List innerSpecDescriptor = $convert.base64Decode('CglJbm5lclNwZWMSHwoLY2hpbGRfb3JkZXIYASADKAVSCmNoaWxkT3JkZXISHQoKY2hpbGRfc2l6ZRgCIAEoBVIJY2hpbGRTaXplEioKEW1pbl9wcmVmaXhfbGVuZ3RoGAMgASgFUg9taW5QcmVmaXhMZW5ndGgSKgoRbWF4X3ByZWZpeF9sZW5ndGgYBCABKAVSD21heFByZWZpeExlbmd0aBIfCgtlbXB0eV9jaGlsZBgFIAEoDFIKZW1wdHlDaGlsZBIhCgRoYXNoGAYgASgOMg0uaWNzMjMuSGFzaE9wUgRoYXNo');
@$core.Deprecated('Use batchProofDescriptor instead')
const BatchProof$json = const {
  '1': 'BatchProof',
  '2': const [
    const {'1': 'entries', '3': 1, '4': 3, '5': 11, '6': '.ics23.BatchEntry', '10': 'entries'},
  ],
};

/// Descriptor for `BatchProof`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchProofDescriptor = $convert.base64Decode('CgpCYXRjaFByb29mEisKB2VudHJpZXMYASADKAsyES5pY3MyMy5CYXRjaEVudHJ5UgdlbnRyaWVz');
@$core.Deprecated('Use batchEntryDescriptor instead')
const BatchEntry$json = const {
  '1': 'BatchEntry',
  '2': const [
    const {'1': 'exist', '3': 1, '4': 1, '5': 11, '6': '.ics23.ExistenceProof', '9': 0, '10': 'exist'},
    const {'1': 'nonexist', '3': 2, '4': 1, '5': 11, '6': '.ics23.NonExistenceProof', '9': 0, '10': 'nonexist'},
  ],
  '8': const [
    const {'1': 'proof'},
  ],
};

/// Descriptor for `BatchEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchEntryDescriptor = $convert.base64Decode('CgpCYXRjaEVudHJ5Ei0KBWV4aXN0GAEgASgLMhUuaWNzMjMuRXhpc3RlbmNlUHJvb2ZIAFIFZXhpc3QSNgoIbm9uZXhpc3QYAiABKAsyGC5pY3MyMy5Ob25FeGlzdGVuY2VQcm9vZkgAUghub25leGlzdEIHCgVwcm9vZg==');
@$core.Deprecated('Use compressedBatchProofDescriptor instead')
const CompressedBatchProof$json = const {
  '1': 'CompressedBatchProof',
  '2': const [
    const {'1': 'entries', '3': 1, '4': 3, '5': 11, '6': '.ics23.CompressedBatchEntry', '10': 'entries'},
    const {'1': 'lookup_inners', '3': 2, '4': 3, '5': 11, '6': '.ics23.InnerOp', '10': 'lookupInners'},
  ],
};

/// Descriptor for `CompressedBatchProof`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List compressedBatchProofDescriptor = $convert.base64Decode('ChRDb21wcmVzc2VkQmF0Y2hQcm9vZhI1CgdlbnRyaWVzGAEgAygLMhsuaWNzMjMuQ29tcHJlc3NlZEJhdGNoRW50cnlSB2VudHJpZXMSMwoNbG9va3VwX2lubmVycxgCIAMoCzIOLmljczIzLklubmVyT3BSDGxvb2t1cElubmVycw==');
@$core.Deprecated('Use compressedBatchEntryDescriptor instead')
const CompressedBatchEntry$json = const {
  '1': 'CompressedBatchEntry',
  '2': const [
    const {'1': 'exist', '3': 1, '4': 1, '5': 11, '6': '.ics23.CompressedExistenceProof', '9': 0, '10': 'exist'},
    const {'1': 'nonexist', '3': 2, '4': 1, '5': 11, '6': '.ics23.CompressedNonExistenceProof', '9': 0, '10': 'nonexist'},
  ],
  '8': const [
    const {'1': 'proof'},
  ],
};

/// Descriptor for `CompressedBatchEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List compressedBatchEntryDescriptor = $convert.base64Decode('ChRDb21wcmVzc2VkQmF0Y2hFbnRyeRI3CgVleGlzdBgBIAEoCzIfLmljczIzLkNvbXByZXNzZWRFeGlzdGVuY2VQcm9vZkgAUgVleGlzdBJACghub25leGlzdBgCIAEoCzIiLmljczIzLkNvbXByZXNzZWROb25FeGlzdGVuY2VQcm9vZkgAUghub25leGlzdEIHCgVwcm9vZg==');
@$core.Deprecated('Use compressedExistenceProofDescriptor instead')
const CompressedExistenceProof$json = const {
  '1': 'CompressedExistenceProof',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 12, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
    const {'1': 'leaf', '3': 3, '4': 1, '5': 11, '6': '.ics23.LeafOp', '10': 'leaf'},
    const {'1': 'path', '3': 4, '4': 3, '5': 5, '10': 'path'},
  ],
};

/// Descriptor for `CompressedExistenceProof`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List compressedExistenceProofDescriptor = $convert.base64Decode('ChhDb21wcmVzc2VkRXhpc3RlbmNlUHJvb2YSEAoDa2V5GAEgASgMUgNrZXkSFAoFdmFsdWUYAiABKAxSBXZhbHVlEiEKBGxlYWYYAyABKAsyDS5pY3MyMy5MZWFmT3BSBGxlYWYSEgoEcGF0aBgEIAMoBVIEcGF0aA==');
@$core.Deprecated('Use compressedNonExistenceProofDescriptor instead')
const CompressedNonExistenceProof$json = const {
  '1': 'CompressedNonExistenceProof',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 12, '10': 'key'},
    const {'1': 'left', '3': 2, '4': 1, '5': 11, '6': '.ics23.CompressedExistenceProof', '10': 'left'},
    const {'1': 'right', '3': 3, '4': 1, '5': 11, '6': '.ics23.CompressedExistenceProof', '10': 'right'},
  ],
};

/// Descriptor for `CompressedNonExistenceProof`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List compressedNonExistenceProofDescriptor = $convert.base64Decode('ChtDb21wcmVzc2VkTm9uRXhpc3RlbmNlUHJvb2YSEAoDa2V5GAEgASgMUgNrZXkSMwoEbGVmdBgCIAEoCzIfLmljczIzLkNvbXByZXNzZWRFeGlzdGVuY2VQcm9vZlIEbGVmdBI1CgVyaWdodBgDIAEoCzIfLmljczIzLkNvbXByZXNzZWRFeGlzdGVuY2VQcm9vZlIFcmlnaHQ=');
