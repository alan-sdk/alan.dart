// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genesis_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenesisResponse _$GenesisResponseFromJson(Map<String, dynamic> json) {
  return GenesisResponse(
    result: json['result'] == null
        ? null
        : GenesisResult.fromJson(json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GenesisResponseToJson(GenesisResponse instance) =>
    <String, dynamic>{
      'result': instance.result?.toJson(),
    };

GenesisResult _$GenesisResultFromJson(Map<String, dynamic> json) {
  return GenesisResult(
    genesis: json['genesis'] == null
        ? null
        : Genesis.fromJson(json['genesis'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GenesisResultToJson(GenesisResult instance) =>
    <String, dynamic>{
      'genesis': instance.genesis?.toJson(),
    };

Genesis _$GenesisFromJson(Map<String, dynamic> json) {
  return Genesis(
    genesisTime: json['genesis_time'] as String,
    appState: json['app_state'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$GenesisToJson(Genesis instance) => <String, dynamic>{
      'genesis_time': instance.genesisTime,
      'app_state': instance.appState,
    };
