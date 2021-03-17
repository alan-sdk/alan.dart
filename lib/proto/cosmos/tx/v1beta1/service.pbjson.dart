///
//  Generated code. Do not modify.
//  source: cosmos/tx/v1beta1/service.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const BroadcastMode$json = const {
  '1': 'BroadcastMode',
  '2': const [
    const {'1': 'BROADCAST_MODE_UNSPECIFIED', '2': 0},
    const {'1': 'BROADCAST_MODE_BLOCK', '2': 1},
    const {'1': 'BROADCAST_MODE_SYNC', '2': 2},
    const {'1': 'BROADCAST_MODE_ASYNC', '2': 3},
  ],
};

const GetTxsEventRequest$json = const {
  '1': 'GetTxsEventRequest',
  '2': const [
    const {'1': 'events', '3': 1, '4': 3, '5': 9, '10': 'events'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
};

const GetTxsEventResponse$json = const {
  '1': 'GetTxsEventResponse',
  '2': const [
    const {'1': 'txs', '3': 1, '4': 3, '5': 11, '6': '.cosmos.tx.v1beta1.Tx', '10': 'txs'},
    const {'1': 'tx_responses', '3': 2, '4': 3, '5': 11, '6': '.cosmos.base.abci.v1beta1.TxResponse', '10': 'txResponses'},
    const {'1': 'pagination', '3': 3, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

const BroadcastTxRequest$json = const {
  '1': 'BroadcastTxRequest',
  '2': const [
    const {'1': 'tx_bytes', '3': 1, '4': 1, '5': 12, '10': 'txBytes'},
    const {'1': 'mode', '3': 2, '4': 1, '5': 14, '6': '.cosmos.tx.v1beta1.BroadcastMode', '10': 'mode'},
  ],
};

const BroadcastTxResponse$json = const {
  '1': 'BroadcastTxResponse',
  '2': const [
    const {'1': 'tx_response', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.abci.v1beta1.TxResponse', '10': 'txResponse'},
  ],
};

const SimulateRequest$json = const {
  '1': 'SimulateRequest',
  '2': const [
    const {'1': 'tx', '3': 1, '4': 1, '5': 11, '6': '.cosmos.tx.v1beta1.Tx', '10': 'tx'},
  ],
};

const SimulateResponse$json = const {
  '1': 'SimulateResponse',
  '2': const [
    const {'1': 'gas_info', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.abci.v1beta1.GasInfo', '10': 'gasInfo'},
    const {'1': 'result', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.abci.v1beta1.Result', '10': 'result'},
  ],
};

const GetTxRequest$json = const {
  '1': 'GetTxRequest',
  '2': const [
    const {'1': 'hash', '3': 1, '4': 1, '5': 9, '10': 'hash'},
  ],
};

const GetTxResponse$json = const {
  '1': 'GetTxResponse',
  '2': const [
    const {'1': 'tx', '3': 1, '4': 1, '5': 11, '6': '.cosmos.tx.v1beta1.Tx', '10': 'tx'},
    const {'1': 'tx_response', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.abci.v1beta1.TxResponse', '10': 'txResponse'},
  ],
};

