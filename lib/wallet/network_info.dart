import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'network_info.g.dart';

/// Contains the information of a generic Cosmos-based network.
@JsonSerializable(explicitToJson: true)
class NetworkInfo extends Equatable {
  /// Bech32 human readable part of the addresses related to this network
  @JsonKey(name: 'bech32_hrp', required: true)
  final String bech32Hrp;

  /// URL of the fullnode to be used when querying data and sending transactions.
  @JsonKey(name: 'full_node_host', required: true)
  final String fullNodeHost;

  /// Port of the LCD endpoint used to query some chaing data.
  @JsonKey(name: 'lcd_port', defaultValue: 1317)
  final int lcdPort;

  /// Returns the full endpoint to the LCD APIs.
  String get lcdEndpoint {
    return '$fullNodeHost:$lcdPort';
  }

  /// Port of the gRPC endpoint used to query some chain data.
  @JsonKey(name: 'grpc_port', defaultValue: 9090)
  final int gRPCPort;

  NetworkInfo({
    @required this.bech32Hrp,
    @required this.fullNodeHost,
    this.lcdPort = 1317,
    this.gRPCPort = 9090,
  });

  factory NetworkInfo.fromJson(Map<String, dynamic> json) {
    return _$NetworkInfoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$NetworkInfoToJson(this);
  }

  @override
  List<Object> get props {
    return [bech32Hrp, fullNodeHost, lcdPort, gRPCPort];
  }

  @override
  String toString() {
    return '{ '
        'bech32Hrp: $bech32Hrp, '
        'fullNodeHost: $fullNodeHost, '
        'lcdPort: $lcdPort, '
        'gRPCPort: $gRPCPort '
        '}';
  }
}
