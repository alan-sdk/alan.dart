///
//  Generated code. Do not modify.
//  source: tendermint/p2p/types.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const NetAddress$json = const {
  '1': 'NetAddress',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'id'},
    const {'1': 'ip', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'ip'},
    const {'1': 'port', '3': 3, '4': 1, '5': 13, '10': 'port'},
  ],
};

const ProtocolVersion$json = const {
  '1': 'ProtocolVersion',
  '2': const [
    const {'1': 'p2p', '3': 1, '4': 1, '5': 4, '8': const {}, '10': 'p2p'},
    const {'1': 'block', '3': 2, '4': 1, '5': 4, '10': 'block'},
    const {'1': 'app', '3': 3, '4': 1, '5': 4, '10': 'app'},
  ],
};

const DefaultNodeInfo$json = const {
  '1': 'DefaultNodeInfo',
  '2': const [
    const {'1': 'protocol_version', '3': 1, '4': 1, '5': 11, '6': '.tendermint.p2p.ProtocolVersion', '8': const {}, '10': 'protocolVersion'},
    const {'1': 'default_node_id', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'defaultNodeId'},
    const {'1': 'listen_addr', '3': 3, '4': 1, '5': 9, '10': 'listenAddr'},
    const {'1': 'network', '3': 4, '4': 1, '5': 9, '10': 'network'},
    const {'1': 'version', '3': 5, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'channels', '3': 6, '4': 1, '5': 12, '10': 'channels'},
    const {'1': 'moniker', '3': 7, '4': 1, '5': 9, '10': 'moniker'},
    const {'1': 'other', '3': 8, '4': 1, '5': 11, '6': '.tendermint.p2p.DefaultNodeInfoOther', '8': const {}, '10': 'other'},
  ],
};

const DefaultNodeInfoOther$json = const {
  '1': 'DefaultNodeInfoOther',
  '2': const [
    const {'1': 'tx_index', '3': 1, '4': 1, '5': 9, '10': 'txIndex'},
    const {'1': 'rpc_address', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'rpcAddress'},
  ],
};

