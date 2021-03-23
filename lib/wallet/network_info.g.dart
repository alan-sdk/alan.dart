// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkInfo _$NetworkInfoFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['bech32_hrp', 'full_node_host']);
  return NetworkInfo(
    bech32Hrp: json['bech32_hrp'] as String,
    fullNodeHost: json['full_node_host'] as String,
    lcdPort: json['lcd_port'] as int ?? 1317,
    gRPCPort: json['grpc_port'] as int ?? 9090,
  );
}

Map<String, dynamic> _$NetworkInfoToJson(NetworkInfo instance) =>
    <String, dynamic>{
      'bech32_hrp': instance.bech32Hrp,
      'full_node_host': instance.fullNodeHost,
      'lcd_port': instance.lcdPort,
      'grpc_port': instance.gRPCPort,
    };
