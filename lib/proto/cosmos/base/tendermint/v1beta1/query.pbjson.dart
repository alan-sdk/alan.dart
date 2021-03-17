///
//  Generated code. Do not modify.
//  source: cosmos/base/tendermint/v1beta1/query.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const GetValidatorSetByHeightRequest$json = const {
  '1': 'GetValidatorSetByHeightRequest',
  '2': const [
    const {'1': 'height', '3': 1, '4': 1, '5': 3, '10': 'height'},
    const {
      '1': 'pagination',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.cosmos.base.query.v1beta1.PageRequest',
      '10': 'pagination'
    },
  ],
};

const GetValidatorSetByHeightResponse$json = const {
  '1': 'GetValidatorSetByHeightResponse',
  '2': const [
    const {'1': 'block_height', '3': 1, '4': 1, '5': 3, '10': 'blockHeight'},
    const {
      '1': 'validators',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.cosmos.base.tendermint.v1beta1.Validator',
      '10': 'validators'
    },
    const {
      '1': 'pagination',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.cosmos.base.query.v1beta1.PageResponse',
      '10': 'pagination'
    },
  ],
};

const GetLatestValidatorSetRequest$json = const {
  '1': 'GetLatestValidatorSetRequest',
  '2': const [
    const {
      '1': 'pagination',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.cosmos.base.query.v1beta1.PageRequest',
      '10': 'pagination'
    },
  ],
};

const GetLatestValidatorSetResponse$json = const {
  '1': 'GetLatestValidatorSetResponse',
  '2': const [
    const {'1': 'block_height', '3': 1, '4': 1, '5': 3, '10': 'blockHeight'},
    const {
      '1': 'validators',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.cosmos.base.tendermint.v1beta1.Validator',
      '10': 'validators'
    },
    const {
      '1': 'pagination',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.cosmos.base.query.v1beta1.PageResponse',
      '10': 'pagination'
    },
  ],
};

const Validator$json = const {
  '1': 'Validator',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    const {
      '1': 'pub_key',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'pubKey'
    },
    const {'1': 'voting_power', '3': 3, '4': 1, '5': 3, '10': 'votingPower'},
    const {
      '1': 'proposer_priority',
      '3': 4,
      '4': 1,
      '5': 3,
      '10': 'proposerPriority'
    },
  ],
};

const GetBlockByHeightRequest$json = const {
  '1': 'GetBlockByHeightRequest',
  '2': const [
    const {'1': 'height', '3': 1, '4': 1, '5': 3, '10': 'height'},
  ],
};

const GetBlockByHeightResponse$json = const {
  '1': 'GetBlockByHeightResponse',
  '2': const [
    const {
      '1': 'block_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tendermint.types.BlockID',
      '10': 'blockId'
    },
    const {
      '1': 'block',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tendermint.types.Block',
      '10': 'block'
    },
  ],
};

const GetLatestBlockRequest$json = const {
  '1': 'GetLatestBlockRequest',
};

const GetLatestBlockResponse$json = const {
  '1': 'GetLatestBlockResponse',
  '2': const [
    const {
      '1': 'block_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tendermint.types.BlockID',
      '10': 'blockId'
    },
    const {
      '1': 'block',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tendermint.types.Block',
      '10': 'block'
    },
  ],
};

const GetSyncingRequest$json = const {
  '1': 'GetSyncingRequest',
};

const GetSyncingResponse$json = const {
  '1': 'GetSyncingResponse',
  '2': const [
    const {'1': 'syncing', '3': 1, '4': 1, '5': 8, '10': 'syncing'},
  ],
};

const GetNodeInfoRequest$json = const {
  '1': 'GetNodeInfoRequest',
};

const GetNodeInfoResponse$json = const {
  '1': 'GetNodeInfoResponse',
  '2': const [
    const {
      '1': 'default_node_info',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tendermint.p2p.DefaultNodeInfo',
      '10': 'defaultNodeInfo'
    },
    const {
      '1': 'application_version',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.cosmos.base.tendermint.v1beta1.VersionInfo',
      '10': 'applicationVersion'
    },
  ],
};

const VersionInfo$json = const {
  '1': 'VersionInfo',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'app_name', '3': 2, '4': 1, '5': 9, '10': 'appName'},
    const {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'git_commit', '3': 4, '4': 1, '5': 9, '10': 'gitCommit'},
    const {'1': 'build_tags', '3': 5, '4': 1, '5': 9, '10': 'buildTags'},
    const {'1': 'go_version', '3': 6, '4': 1, '5': 9, '10': 'goVersion'},
    const {
      '1': 'build_deps',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.cosmos.base.tendermint.v1beta1.Module',
      '10': 'buildDeps'
    },
  ],
};

const Module$json = const {
  '1': 'Module',
  '2': const [
    const {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    const {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'sum', '3': 3, '4': 1, '5': 9, '10': 'sum'},
  ],
};
