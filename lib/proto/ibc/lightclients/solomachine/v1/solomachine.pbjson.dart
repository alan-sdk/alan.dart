///
//  Generated code. Do not modify.
//  source: ibc/lightclients/solomachine/v1/solomachine.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const DataType$json = const {
  '1': 'DataType',
  '2': const [
    const {'1': 'DATA_TYPE_UNINITIALIZED_UNSPECIFIED', '2': 0, '3': const {}},
    const {'1': 'DATA_TYPE_CLIENT_STATE', '2': 1, '3': const {}},
    const {'1': 'DATA_TYPE_CONSENSUS_STATE', '2': 2, '3': const {}},
    const {'1': 'DATA_TYPE_CONNECTION_STATE', '2': 3, '3': const {}},
    const {'1': 'DATA_TYPE_CHANNEL_STATE', '2': 4, '3': const {}},
    const {'1': 'DATA_TYPE_PACKET_COMMITMENT', '2': 5, '3': const {}},
    const {'1': 'DATA_TYPE_PACKET_ACKNOWLEDGEMENT', '2': 6, '3': const {}},
    const {'1': 'DATA_TYPE_PACKET_RECEIPT_ABSENCE', '2': 7, '3': const {}},
    const {'1': 'DATA_TYPE_NEXT_SEQUENCE_RECV', '2': 8, '3': const {}},
    const {'1': 'DATA_TYPE_HEADER', '2': 9, '3': const {}},
  ],
  '3': const {},
};

const ClientState$json = const {
  '1': 'ClientState',
  '2': const [
    const {'1': 'sequence', '3': 1, '4': 1, '5': 4, '10': 'sequence'},
    const {'1': 'frozen_sequence', '3': 2, '4': 1, '5': 4, '8': const {}, '10': 'frozenSequence'},
    const {'1': 'consensus_state', '3': 3, '4': 1, '5': 11, '6': '.ibc.lightclients.solomachine.v1.ConsensusState', '8': const {}, '10': 'consensusState'},
    const {'1': 'allow_update_after_proposal', '3': 4, '4': 1, '5': 8, '8': const {}, '10': 'allowUpdateAfterProposal'},
  ],
  '7': const {},
};

const ConsensusState$json = const {
  '1': 'ConsensusState',
  '2': const [
    const {'1': 'public_key', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Any', '8': const {}, '10': 'publicKey'},
    const {'1': 'diversifier', '3': 2, '4': 1, '5': 9, '10': 'diversifier'},
    const {'1': 'timestamp', '3': 3, '4': 1, '5': 4, '10': 'timestamp'},
  ],
  '7': const {},
};

const Header$json = const {
  '1': 'Header',
  '2': const [
    const {'1': 'sequence', '3': 1, '4': 1, '5': 4, '10': 'sequence'},
    const {'1': 'timestamp', '3': 2, '4': 1, '5': 4, '10': 'timestamp'},
    const {'1': 'signature', '3': 3, '4': 1, '5': 12, '10': 'signature'},
    const {'1': 'new_public_key', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Any', '8': const {}, '10': 'newPublicKey'},
    const {'1': 'new_diversifier', '3': 5, '4': 1, '5': 9, '8': const {}, '10': 'newDiversifier'},
  ],
  '7': const {},
};

const Misbehaviour$json = const {
  '1': 'Misbehaviour',
  '2': const [
    const {'1': 'client_id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'clientId'},
    const {'1': 'sequence', '3': 2, '4': 1, '5': 4, '10': 'sequence'},
    const {'1': 'signature_one', '3': 3, '4': 1, '5': 11, '6': '.ibc.lightclients.solomachine.v1.SignatureAndData', '8': const {}, '10': 'signatureOne'},
    const {'1': 'signature_two', '3': 4, '4': 1, '5': 11, '6': '.ibc.lightclients.solomachine.v1.SignatureAndData', '8': const {}, '10': 'signatureTwo'},
  ],
  '7': const {},
};

const SignatureAndData$json = const {
  '1': 'SignatureAndData',
  '2': const [
    const {'1': 'signature', '3': 1, '4': 1, '5': 12, '10': 'signature'},
    const {'1': 'data_type', '3': 2, '4': 1, '5': 14, '6': '.ibc.lightclients.solomachine.v1.DataType', '8': const {}, '10': 'dataType'},
    const {'1': 'data', '3': 3, '4': 1, '5': 12, '10': 'data'},
    const {'1': 'timestamp', '3': 4, '4': 1, '5': 4, '10': 'timestamp'},
  ],
  '7': const {},
};

const TimestampedSignatureData$json = const {
  '1': 'TimestampedSignatureData',
  '2': const [
    const {'1': 'signature_data', '3': 1, '4': 1, '5': 12, '8': const {}, '10': 'signatureData'},
    const {'1': 'timestamp', '3': 2, '4': 1, '5': 4, '10': 'timestamp'},
  ],
  '7': const {},
};

const SignBytes$json = const {
  '1': 'SignBytes',
  '2': const [
    const {'1': 'sequence', '3': 1, '4': 1, '5': 4, '10': 'sequence'},
    const {'1': 'timestamp', '3': 2, '4': 1, '5': 4, '10': 'timestamp'},
    const {'1': 'diversifier', '3': 3, '4': 1, '5': 9, '10': 'diversifier'},
    const {'1': 'data_type', '3': 4, '4': 1, '5': 14, '6': '.ibc.lightclients.solomachine.v1.DataType', '8': const {}, '10': 'dataType'},
    const {'1': 'data', '3': 5, '4': 1, '5': 12, '10': 'data'},
  ],
  '7': const {},
};

const HeaderData$json = const {
  '1': 'HeaderData',
  '2': const [
    const {'1': 'new_pub_key', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Any', '8': const {}, '10': 'newPubKey'},
    const {'1': 'new_diversifier', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'newDiversifier'},
  ],
  '7': const {},
};

const ClientStateData$json = const {
  '1': 'ClientStateData',
  '2': const [
    const {'1': 'path', '3': 1, '4': 1, '5': 12, '10': 'path'},
    const {'1': 'client_state', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Any', '8': const {}, '10': 'clientState'},
  ],
  '7': const {},
};

const ConsensusStateData$json = const {
  '1': 'ConsensusStateData',
  '2': const [
    const {'1': 'path', '3': 1, '4': 1, '5': 12, '10': 'path'},
    const {'1': 'consensus_state', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Any', '8': const {}, '10': 'consensusState'},
  ],
  '7': const {},
};

const ConnectionStateData$json = const {
  '1': 'ConnectionStateData',
  '2': const [
    const {'1': 'path', '3': 1, '4': 1, '5': 12, '10': 'path'},
    const {'1': 'connection', '3': 2, '4': 1, '5': 11, '6': '.ibc.core.connection.v1.ConnectionEnd', '10': 'connection'},
  ],
  '7': const {},
};

const ChannelStateData$json = const {
  '1': 'ChannelStateData',
  '2': const [
    const {'1': 'path', '3': 1, '4': 1, '5': 12, '10': 'path'},
    const {'1': 'channel', '3': 2, '4': 1, '5': 11, '6': '.ibc.core.channel.v1.Channel', '10': 'channel'},
  ],
  '7': const {},
};

const PacketCommitmentData$json = const {
  '1': 'PacketCommitmentData',
  '2': const [
    const {'1': 'path', '3': 1, '4': 1, '5': 12, '10': 'path'},
    const {'1': 'commitment', '3': 2, '4': 1, '5': 12, '10': 'commitment'},
  ],
};

const PacketAcknowledgementData$json = const {
  '1': 'PacketAcknowledgementData',
  '2': const [
    const {'1': 'path', '3': 1, '4': 1, '5': 12, '10': 'path'},
    const {'1': 'acknowledgement', '3': 2, '4': 1, '5': 12, '10': 'acknowledgement'},
  ],
};

const PacketReceiptAbsenceData$json = const {
  '1': 'PacketReceiptAbsenceData',
  '2': const [
    const {'1': 'path', '3': 1, '4': 1, '5': 12, '10': 'path'},
  ],
};

const NextSequenceRecvData$json = const {
  '1': 'NextSequenceRecvData',
  '2': const [
    const {'1': 'path', '3': 1, '4': 1, '5': 12, '10': 'path'},
    const {'1': 'next_seq_recv', '3': 2, '4': 1, '5': 4, '8': const {}, '10': 'nextSeqRecv'},
  ],
};

