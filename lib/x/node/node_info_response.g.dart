// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NodeInfoResponse _$NodeInfoResponseFromJson(Map<String, dynamic> json) {
  return NodeInfoResponse(
    nodeInfo: NodeInfo.fromJson(json['node_info'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$NodeInfoResponseToJson(NodeInfoResponse instance) =>
    <String, dynamic>{
      'node_info': instance.nodeInfo.toJson(),
    };

NodeInfo _$NodeInfoFromJson(Map<String, dynamic> json) {
  return NodeInfo(
    network: json['network'] as String,
  );
}

Map<String, dynamic> _$NodeInfoToJson(NodeInfo instance) => <String, dynamic>{
      'network': instance.network,
    };
