///
//  Generated code. Do not modify.
//  source: cosmos/tx/signing/v1beta1/signing.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const SignMode$json = const {
  '1': 'SignMode',
  '2': const [
    const {'1': 'SIGN_MODE_UNSPECIFIED', '2': 0},
    const {'1': 'SIGN_MODE_DIRECT', '2': 1},
    const {'1': 'SIGN_MODE_TEXTUAL', '2': 2},
    const {'1': 'SIGN_MODE_LEGACY_AMINO_JSON', '2': 127},
  ],
};

const SignatureDescriptors$json = const {
  '1': 'SignatureDescriptors',
  '2': const [
    const {'1': 'signatures', '3': 1, '4': 3, '5': 11, '6': '.cosmos.tx.signing.v1beta1.SignatureDescriptor', '10': 'signatures'},
  ],
};

const SignatureDescriptor$json = const {
  '1': 'SignatureDescriptor',
  '2': const [
    const {'1': 'public_key', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Any', '10': 'publicKey'},
    const {'1': 'data', '3': 2, '4': 1, '5': 11, '6': '.cosmos.tx.signing.v1beta1.SignatureDescriptor.Data', '10': 'data'},
    const {'1': 'sequence', '3': 3, '4': 1, '5': 4, '10': 'sequence'},
  ],
  '3': const [SignatureDescriptor_Data$json],
};

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

const SignatureDescriptor_Data_Single$json = const {
  '1': 'Single',
  '2': const [
    const {'1': 'mode', '3': 1, '4': 1, '5': 14, '6': '.cosmos.tx.signing.v1beta1.SignMode', '10': 'mode'},
    const {'1': 'signature', '3': 2, '4': 1, '5': 12, '10': 'signature'},
  ],
};

const SignatureDescriptor_Data_Multi$json = const {
  '1': 'Multi',
  '2': const [
    const {'1': 'bitarray', '3': 1, '4': 1, '5': 11, '6': '.cosmos.crypto.multisig.v1beta1.CompactBitArray', '10': 'bitarray'},
    const {'1': 'signatures', '3': 2, '4': 3, '5': 11, '6': '.cosmos.tx.signing.v1beta1.SignatureDescriptor.Data', '10': 'signatures'},
  ],
};

