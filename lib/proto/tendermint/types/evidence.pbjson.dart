///
//  Generated code. Do not modify.
//  source: tendermint/types/evidence.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const Evidence$json = const {
  '1': 'Evidence',
  '2': const [
    const {'1': 'duplicate_vote_evidence', '3': 1, '4': 1, '5': 11, '6': '.tendermint.types.DuplicateVoteEvidence', '9': 0, '10': 'duplicateVoteEvidence'},
    const {'1': 'light_client_attack_evidence', '3': 2, '4': 1, '5': 11, '6': '.tendermint.types.LightClientAttackEvidence', '9': 0, '10': 'lightClientAttackEvidence'},
  ],
  '8': const [
    const {'1': 'sum'},
  ],
};

const DuplicateVoteEvidence$json = const {
  '1': 'DuplicateVoteEvidence',
  '2': const [
    const {'1': 'vote_a', '3': 1, '4': 1, '5': 11, '6': '.tendermint.types.Vote', '10': 'voteA'},
    const {'1': 'vote_b', '3': 2, '4': 1, '5': 11, '6': '.tendermint.types.Vote', '10': 'voteB'},
    const {'1': 'total_voting_power', '3': 3, '4': 1, '5': 3, '10': 'totalVotingPower'},
    const {'1': 'validator_power', '3': 4, '4': 1, '5': 3, '10': 'validatorPower'},
    const {'1': 'timestamp', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'timestamp'},
  ],
};

const LightClientAttackEvidence$json = const {
  '1': 'LightClientAttackEvidence',
  '2': const [
    const {'1': 'conflicting_block', '3': 1, '4': 1, '5': 11, '6': '.tendermint.types.LightBlock', '10': 'conflictingBlock'},
    const {'1': 'common_height', '3': 2, '4': 1, '5': 3, '10': 'commonHeight'},
    const {'1': 'byzantine_validators', '3': 3, '4': 3, '5': 11, '6': '.tendermint.types.Validator', '10': 'byzantineValidators'},
    const {'1': 'total_voting_power', '3': 4, '4': 1, '5': 3, '10': 'totalVotingPower'},
    const {'1': 'timestamp', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'timestamp'},
  ],
};

const EvidenceList$json = const {
  '1': 'EvidenceList',
  '2': const [
    const {'1': 'evidence', '3': 1, '4': 3, '5': 11, '6': '.tendermint.types.Evidence', '8': const {}, '10': 'evidence'},
  ],
};

