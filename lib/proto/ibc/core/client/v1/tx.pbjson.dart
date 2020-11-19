///
//  Generated code. Do not modify.
//  source: ibc/core/client/v1/tx.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const MsgCreateClient$json = const {
  '1': 'MsgCreateClient',
  '2': const [
    const {'1': 'client_id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'clientId'},
    const {'1': 'client_state', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Any', '8': const {}, '10': 'clientState'},
    const {'1': 'consensus_state', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Any', '8': const {}, '10': 'consensusState'},
    const {'1': 'signer', '3': 4, '4': 1, '5': 9, '10': 'signer'},
  ],
  '7': const {},
};

const MsgCreateClientResponse$json = const {
  '1': 'MsgCreateClientResponse',
};

const MsgUpdateClient$json = const {
  '1': 'MsgUpdateClient',
  '2': const [
    const {'1': 'client_id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'clientId'},
    const {'1': 'header', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Any', '10': 'header'},
    const {'1': 'signer', '3': 3, '4': 1, '5': 9, '10': 'signer'},
  ],
  '7': const {},
};

const MsgUpdateClientResponse$json = const {
  '1': 'MsgUpdateClientResponse',
};

const MsgUpgradeClient$json = const {
  '1': 'MsgUpgradeClient',
  '2': const [
    const {'1': 'client_id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'clientId'},
    const {'1': 'client_state', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Any', '8': const {}, '10': 'clientState'},
    const {'1': 'upgrade_height', '3': 3, '4': 1, '5': 11, '6': '.ibc.core.client.v1.Height', '8': const {}, '10': 'upgradeHeight'},
    const {'1': 'proof_upgrade', '3': 4, '4': 1, '5': 12, '8': const {}, '10': 'proofUpgrade'},
    const {'1': 'signer', '3': 5, '4': 1, '5': 9, '10': 'signer'},
  ],
};

const MsgUpgradeClientResponse$json = const {
  '1': 'MsgUpgradeClientResponse',
};

const MsgSubmitMisbehaviour$json = const {
  '1': 'MsgSubmitMisbehaviour',
  '2': const [
    const {'1': 'client_id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'clientId'},
    const {'1': 'misbehaviour', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Any', '10': 'misbehaviour'},
    const {'1': 'signer', '3': 3, '4': 1, '5': 9, '10': 'signer'},
  ],
  '7': const {},
};

const MsgSubmitMisbehaviourResponse$json = const {
  '1': 'MsgSubmitMisbehaviourResponse',
};

