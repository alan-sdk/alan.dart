///
//  Generated code. Do not modify.
//  source: cosmos/tx/signing/v1beta1/signing.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use signModeDescriptor instead')
const SignMode$json = const {
  '1': 'SignMode',
  '2': const [
    const {'1': 'SIGN_MODE_UNSPECIFIED', '2': 0},
    const {'1': 'SIGN_MODE_DIRECT', '2': 1},
    const {'1': 'SIGN_MODE_TEXTUAL', '2': 2},
    const {'1': 'SIGN_MODE_LEGACY_AMINO_JSON', '2': 127},
    const {'1': 'SIGN_MODE_EIP_191', '2': 191},
  ],
};

/// Descriptor for `SignMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List signModeDescriptor = $convert.base64Decode('CghTaWduTW9kZRIZChVTSUdOX01PREVfVU5TUEVDSUZJRUQQABIUChBTSUdOX01PREVfRElSRUNUEAESFQoRU0lHTl9NT0RFX1RFWFRVQUwQAhIfChtTSUdOX01PREVfTEVHQUNZX0FNSU5PX0pTT04QfxIWChFTSUdOX01PREVfRUlQXzE5MRC/AQ==');
@$core.Deprecated('Use signatureDescriptorsDescriptor instead')
const SignatureDescriptors$json = const {
  '1': 'SignatureDescriptors',
  '2': const [
    const {'1': 'signatures', '3': 1, '4': 3, '5': 11, '6': '.cosmos.tx.signing.v1beta1.SignatureDescriptor', '10': 'signatures'},
  ],
};

/// Descriptor for `SignatureDescriptors`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signatureDescriptorsDescriptor = $convert.base64Decode('ChRTaWduYXR1cmVEZXNjcmlwdG9ycxJOCgpzaWduYXR1cmVzGAEgAygLMi4uY29zbW9zLnR4LnNpZ25pbmcudjFiZXRhMS5TaWduYXR1cmVEZXNjcmlwdG9yUgpzaWduYXR1cmVz');
@$core.Deprecated('Use signatureDescriptorDescriptor instead')
const SignatureDescriptor$json = const {
  '1': 'SignatureDescriptor',
  '2': const [
    const {'1': 'public_key', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Any', '10': 'publicKey'},
    const {'1': 'data', '3': 2, '4': 1, '5': 11, '6': '.cosmos.tx.signing.v1beta1.SignatureDescriptor.Data', '10': 'data'},
    const {'1': 'sequence', '3': 3, '4': 1, '5': 4, '10': 'sequence'},
  ],
  '3': const [SignatureDescriptor_Data$json],
};

@$core.Deprecated('Use signatureDescriptorDescriptor instead')
const SignatureDescriptor_Data$json = const {
  '1': 'Data',
  '2': const [
    const {'1': 'single', '3': 1, '4': 1, '5': 11, '6': '.cosmos.tx.signing.v1beta1.SignatureDescriptor.Data.Single', '9': 0, '10': 'single'},
    const {'1': 'multi', '3': 2, '4': 1, '5': 11, '6': '.cosmos.tx.signing.v1beta1.SignatureDescriptor.Data.Multi', '9': 0, '10': 'multi'},
  ],
  '3': const [SignatureDescriptor_Data_Single$json, SignatureDescriptor_Data_Multi$json],
  '8': const [
    const {'1': 'sum'},
  ],
};

@$core.Deprecated('Use signatureDescriptorDescriptor instead')
const SignatureDescriptor_Data_Single$json = const {
  '1': 'Single',
  '2': const [
    const {'1': 'mode', '3': 1, '4': 1, '5': 14, '6': '.cosmos.tx.signing.v1beta1.SignMode', '10': 'mode'},
    const {'1': 'signature', '3': 2, '4': 1, '5': 12, '10': 'signature'},
  ],
};

@$core.Deprecated('Use signatureDescriptorDescriptor instead')
const SignatureDescriptor_Data_Multi$json = const {
  '1': 'Multi',
  '2': const [
    const {'1': 'bitarray', '3': 1, '4': 1, '5': 11, '6': '.cosmos.crypto.multisig.v1beta1.CompactBitArray', '10': 'bitarray'},
    const {'1': 'signatures', '3': 2, '4': 3, '5': 11, '6': '.cosmos.tx.signing.v1beta1.SignatureDescriptor.Data', '10': 'signatures'},
  ],
};

/// Descriptor for `SignatureDescriptor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signatureDescriptorDescriptor = $convert.base64Decode('ChNTaWduYXR1cmVEZXNjcmlwdG9yEjMKCnB1YmxpY19rZXkYASABKAsyFC5nb29nbGUucHJvdG9idWYuQW55UglwdWJsaWNLZXkSRwoEZGF0YRgCIAEoCzIzLmNvc21vcy50eC5zaWduaW5nLnYxYmV0YTEuU2lnbmF0dXJlRGVzY3JpcHRvci5EYXRhUgRkYXRhEhoKCHNlcXVlbmNlGAMgASgEUghzZXF1ZW5jZRrDAwoERGF0YRJUCgZzaW5nbGUYASABKAsyOi5jb3Ntb3MudHguc2lnbmluZy52MWJldGExLlNpZ25hdHVyZURlc2NyaXB0b3IuRGF0YS5TaW5nbGVIAFIGc2luZ2xlElEKBW11bHRpGAIgASgLMjkuY29zbW9zLnR4LnNpZ25pbmcudjFiZXRhMS5TaWduYXR1cmVEZXNjcmlwdG9yLkRhdGEuTXVsdGlIAFIFbXVsdGkaXwoGU2luZ2xlEjcKBG1vZGUYASABKA4yIy5jb3Ntb3MudHguc2lnbmluZy52MWJldGExLlNpZ25Nb2RlUgRtb2RlEhwKCXNpZ25hdHVyZRgCIAEoDFIJc2lnbmF0dXJlGqkBCgVNdWx0aRJLCghiaXRhcnJheRgBIAEoCzIvLmNvc21vcy5jcnlwdG8ubXVsdGlzaWcudjFiZXRhMS5Db21wYWN0Qml0QXJyYXlSCGJpdGFycmF5ElMKCnNpZ25hdHVyZXMYAiADKAsyMy5jb3Ntb3MudHguc2lnbmluZy52MWJldGExLlNpZ25hdHVyZURlc2NyaXB0b3IuRGF0YVIKc2lnbmF0dXJlc0IFCgNzdW0=');
