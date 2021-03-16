import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'genesis_response.g.dart';

/// Represents the contents of the response that is returned from the RPC
/// upon querying the /genesis endpoint.
@JsonSerializable(explicitToJson: true)
class GenesisResponse extends Equatable {
  @JsonKey(name: 'result')
  final GenesisResult result;

  GenesisResponse({@required this.result});

  factory GenesisResponse.fromJson(Map<String, dynamic> json) {
    return _$GenesisResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$GenesisResponseToJson(this);
  }

  @override
  List<Object> get props {
    return [result];
  }
}

@JsonSerializable(explicitToJson: true)
class GenesisResult extends Equatable {
  @JsonKey(name: 'genesis')
  final Genesis genesis;

  GenesisResult({@required this.genesis});

  factory GenesisResult.fromJson(Map<String, dynamic> json) {
    return _$GenesisResultFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$GenesisResultToJson(this);
  }

  @override
  List<Object> get props {
    return [genesis];
  }
}

@JsonSerializable(explicitToJson: true)
class Genesis extends Equatable {
  @JsonKey(name: 'genesis_time')
  final String genesisTime;

  @JsonKey(name: 'app_state')
  final Map<String, dynamic> appState;

  Genesis({
    @required this.genesisTime,
    @required this.appState,
  });

  factory Genesis.fromJson(Map<String, dynamic> json) {
    return _$GenesisFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$GenesisToJson(this);
  }

  @override
  List<Object> get props {
    return [genesisTime, appState];
  }
}
