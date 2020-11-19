///
//  Generated code. Do not modify.
//  source: ibc/lightclients/tendermint/v1/tendermint.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const ClientState$json = const {
  '1': 'ClientState',
  '2': const [
    const {'1': 'chain_id', '3': 1, '4': 1, '5': 9, '10': 'chainId'},
    const {'1': 'trust_level', '3': 2, '4': 1, '5': 11, '6': '.ibc.lightclients.tendermint.v1.Fraction', '8': const {}, '10': 'trustLevel'},
    const {'1': 'trusting_period', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '8': const {}, '10': 'trustingPeriod'},
    const {'1': 'unbonding_period', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '8': const {}, '10': 'unbondingPeriod'},
    const {'1': 'max_clock_drift', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '8': const {}, '10': 'maxClockDrift'},
    const {'1': 'frozen_height', '3': 6, '4': 1, '5': 11, '6': '.ibc.core.client.v1.Height', '8': const {}, '10': 'frozenHeight'},
    const {'1': 'latest_height', '3': 7, '4': 1, '5': 11, '6': '.ibc.core.client.v1.Height', '8': const {}, '10': 'latestHeight'},
    const {'1': 'proof_specs', '3': 8, '4': 3, '5': 11, '6': '.ics23.ProofSpec', '8': const {}, '10': 'proofSpecs'},
    const {'1': 'upgrade_path', '3': 9, '4': 1, '5': 9, '8': const {}, '10': 'upgradePath'},
    const {'1': 'allow_update_after_expiry', '3': 10, '4': 1, '5': 8, '8': const {}, '10': 'allowUpdateAfterExpiry'},
    const {'1': 'allow_update_after_misbehaviour', '3': 11, '4': 1, '5': 8, '8': const {}, '10': 'allowUpdateAfterMisbehaviour'},
  ],
  '7': const {},
};

const ConsensusState$json = const {
  '1': 'ConsensusState',
  '2': const [
    const {'1': 'timestamp', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'timestamp'},
    const {'1': 'root', '3': 2, '4': 1, '5': 11, '6': '.ibc.core.commitment.v1.MerkleRoot', '8': const {}, '10': 'root'},
    const {'1': 'next_validators_hash', '3': 3, '4': 1, '5': 12, '8': const {}, '10': 'nextValidatorsHash'},
  ],
  '7': const {},
};

const Misbehaviour$json = const {
  '1': 'Misbehaviour',
  '2': const [
    const {'1': 'client_id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'clientId'},
    const {'1': 'header_1', '3': 2, '4': 1, '5': 11, '6': '.ibc.lightclients.tendermint.v1.Header', '8': const {}, '10': 'header1'},
    const {'1': 'header_2', '3': 3, '4': 1, '5': 11, '6': '.ibc.lightclients.tendermint.v1.Header', '8': const {}, '10': 'header2'},
  ],
  '7': const {},
};

const Header$json = const {
  '1': 'Header',
  '2': const [
    const {'1': 'signed_header', '3': 1, '4': 1, '5': 11, '6': '.tendermint.types.SignedHeader', '8': const {}, '10': 'signedHeader'},
    const {'1': 'validator_set', '3': 2, '4': 1, '5': 11, '6': '.tendermint.types.ValidatorSet', '8': const {}, '10': 'validatorSet'},
    const {'1': 'trusted_height', '3': 3, '4': 1, '5': 11, '6': '.ibc.core.client.v1.Height', '8': const {}, '10': 'trustedHeight'},
    const {'1': 'trusted_validators', '3': 4, '4': 1, '5': 11, '6': '.tendermint.types.ValidatorSet', '8': const {}, '10': 'trustedValidators'},
  ],
};

const Fraction$json = const {
  '1': 'Fraction',
  '2': const [
    const {'1': 'numerator', '3': 1, '4': 1, '5': 4, '10': 'numerator'},
    const {'1': 'denominator', '3': 2, '4': 1, '5': 4, '10': 'denominator'},
  ],
};

