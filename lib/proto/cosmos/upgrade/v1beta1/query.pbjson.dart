///
//  Generated code. Do not modify.
//  source: cosmos/upgrade/v1beta1/query.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const QueryCurrentPlanRequest$json = const {
  '1': 'QueryCurrentPlanRequest',
};

const QueryCurrentPlanResponse$json = const {
  '1': 'QueryCurrentPlanResponse',
  '2': const [
    const {
      '1': 'plan',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.cosmos.upgrade.v1beta1.Plan',
      '10': 'plan'
    },
  ],
};

const QueryAppliedPlanRequest$json = const {
  '1': 'QueryAppliedPlanRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

const QueryAppliedPlanResponse$json = const {
  '1': 'QueryAppliedPlanResponse',
  '2': const [
    const {'1': 'height', '3': 1, '4': 1, '5': 3, '10': 'height'},
  ],
};

const QueryUpgradedConsensusStateRequest$json = const {
  '1': 'QueryUpgradedConsensusStateRequest',
  '2': const [
    const {'1': 'last_height', '3': 1, '4': 1, '5': 3, '10': 'lastHeight'},
  ],
};

const QueryUpgradedConsensusStateResponse$json = const {
  '1': 'QueryUpgradedConsensusStateResponse',
  '2': const [
    const {
      '1': 'upgraded_consensus_state',
      '3': 2,
      '4': 1,
      '5': 12,
      '10': 'upgradedConsensusState'
    },
  ],
  '9': const [
    const {'1': 1, '2': 2},
  ],
};
