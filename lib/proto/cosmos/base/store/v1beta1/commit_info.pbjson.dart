///
//  Generated code. Do not modify.
//  source: cosmos/base/store/v1beta1/commit_info.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const CommitInfo$json = const {
  '1': 'CommitInfo',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 3, '10': 'version'},
    const {
      '1': 'store_infos',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.cosmos.base.store.v1beta1.StoreInfo',
      '8': const {},
      '10': 'storeInfos'
    },
  ],
};

const StoreInfo$json = const {
  '1': 'StoreInfo',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'commit_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.cosmos.base.store.v1beta1.CommitID',
      '8': const {},
      '10': 'commitId'
    },
  ],
};

const CommitID$json = const {
  '1': 'CommitID',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 3, '10': 'version'},
    const {'1': 'hash', '3': 2, '4': 1, '5': 12, '10': 'hash'},
  ],
  '7': const {},
};
