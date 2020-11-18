///
//  Generated code. Do not modify.
//  source: cosmos/tx/v1beta1/tx.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const Tx$json = const {
  '1': 'Tx',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 11, '6': '.cosmos.tx.v1beta1.TxBody', '10': 'body'},
    const {'1': 'auth_info', '3': 2, '4': 1, '5': 11, '6': '.cosmos.tx.v1beta1.AuthInfo', '10': 'authInfo'},
    const {'1': 'signatures', '3': 3, '4': 3, '5': 12, '10': 'signatures'},
  ],
};

const TxRaw$json = const {
  '1': 'TxRaw',
  '2': const [
    const {'1': 'body_bytes', '3': 1, '4': 1, '5': 12, '10': 'bodyBytes'},
    const {'1': 'auth_info_bytes', '3': 2, '4': 1, '5': 12, '10': 'authInfoBytes'},
    const {'1': 'signatures', '3': 3, '4': 3, '5': 12, '10': 'signatures'},
  ],
};

const SignDoc$json = const {
  '1': 'SignDoc',
  '2': const [
    const {'1': 'body_bytes', '3': 1, '4': 1, '5': 12, '10': 'bodyBytes'},
    const {'1': 'auth_info_bytes', '3': 2, '4': 1, '5': 12, '10': 'authInfoBytes'},
    const {'1': 'chain_id', '3': 3, '4': 1, '5': 9, '10': 'chainId'},
    const {'1': 'account_number', '3': 4, '4': 1, '5': 4, '10': 'accountNumber'},
  ],
};

const TxBody$json = const {
  '1': 'TxBody',
  '2': const [
    const {'1': 'messages', '3': 1, '4': 3, '5': 11, '6': '.google.protobuf.Any', '10': 'messages'},
    const {'1': 'memo', '3': 2, '4': 1, '5': 9, '10': 'memo'},
    const {'1': 'timeout_height', '3': 3, '4': 1, '5': 4, '10': 'timeoutHeight'},
    const {'1': 'extension_options', '3': 1023, '4': 3, '5': 11, '6': '.google.protobuf.Any', '10': 'extensionOptions'},
    const {'1': 'non_critical_extension_options', '3': 2047, '4': 3, '5': 11, '6': '.google.protobuf.Any', '10': 'nonCriticalExtensionOptions'},
  ],
};

const AuthInfo$json = const {
  '1': 'AuthInfo',
  '2': const [
    const {'1': 'signer_infos', '3': 1, '4': 3, '5': 11, '6': '.cosmos.tx.v1beta1.SignerInfo', '10': 'signerInfos'},
    const {'1': 'fee', '3': 2, '4': 1, '5': 11, '6': '.cosmos.tx.v1beta1.Fee', '10': 'fee'},
  ],
};

const SignerInfo$json = const {
  '1': 'SignerInfo',
  '2': const [
    const {'1': 'public_key', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Any', '10': 'publicKey'},
    const {'1': 'mode_info', '3': 2, '4': 1, '5': 11, '6': '.cosmos.tx.v1beta1.ModeInfo', '10': 'modeInfo'},
    const {'1': 'sequence', '3': 3, '4': 1, '5': 4, '10': 'sequence'},
  ],
};

const ModeInfo$json = const {
  '1': 'ModeInfo',
  '2': const [
    const {'1': 'single', '3': 1, '4': 1, '5': 11, '6': '.cosmos.tx.v1beta1.ModeInfo.Single', '9': 0, '10': 'single'},
    const {'1': 'multi', '3': 2, '4': 1, '5': 11, '6': '.cosmos.tx.v1beta1.ModeInfo.Multi', '9': 0, '10': 'multi'},
  ],
  '3': const [ModeInfo_Single$json, ModeInfo_Multi$json],
  '8': const [
    const {'1': 'sum'},
  ],
};

const ModeInfo_Single$json = const {
  '1': 'Single',
  '2': const [
    const {'1': 'mode', '3': 1, '4': 1, '5': 14, '6': '.cosmos.tx.signing.v1beta1.SignMode', '10': 'mode'},
  ],
};

const ModeInfo_Multi$json = const {
  '1': 'Multi',
  '2': const [
    const {'1': 'bitarray', '3': 1, '4': 1, '5': 11, '6': '.cosmos.crypto.multisig.v1beta1.CompactBitArray', '10': 'bitarray'},
    const {'1': 'mode_infos', '3': 2, '4': 3, '5': 11, '6': '.cosmos.tx.v1beta1.ModeInfo', '10': 'modeInfos'},
  ],
};

const Fee$json = const {
  '1': 'Fee',
  '2': const [
    const {'1': 'amount', '3': 1, '4': 3, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '10': 'amount'},
    const {'1': 'gas_limit', '3': 2, '4': 1, '5': 4, '10': 'gasLimit'},
    const {'1': 'payer', '3': 3, '4': 1, '5': 9, '10': 'payer'},
    const {'1': 'granter', '3': 4, '4': 1, '5': 9, '10': 'granter'},
  ],
};

