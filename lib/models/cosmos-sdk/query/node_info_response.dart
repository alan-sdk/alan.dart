import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'node_info_response.g.dart';

/// Represents the response that is returned from a Cosmos SDK full node
/// when querying the /node_info REST API endpoint.
@JsonSerializable(explicitToJson: true)
class NodeInfoResponse extends Equatable {
  @JsonKey(name: 'node_info')
  final NodeInfo nodeInfo;

  NodeInfoResponse({@required this.nodeInfo}) : assert(nodeInfo != null);

  @override
  List<Object> get props => [nodeInfo];

  factory NodeInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$NodeInfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NodeInfoResponseToJson(this);
}

/// Contains the information found inside the network_info object
/// inside a /node_info REST API response.
@JsonSerializable(explicitToJson: true)
class NodeInfo extends Equatable {
  @JsonKey(name: 'network')
  final String network;

  NodeInfo({@required this.network}) : assert(network != null);

  @override
  List<Object> get props => [network];

  factory NodeInfo.fromJson(Map<String, dynamic> json) =>
      _$NodeInfoFromJson(json);

  Map<String, dynamic> toJson() => _$NodeInfoToJson(this);
}
