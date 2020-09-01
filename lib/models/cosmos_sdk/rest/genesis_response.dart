import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'genesis_response.g.dart';

/// Represents the contents of the response that is returned from the RPC
/// upon querying the /genesis endpoint.
@JsonSerializable(explicitToJson: true)
class GenesisResponse extends Equatable {
  @JsonKey(name: 'result')
  final Result result;

  GenesisResponse({
    @required this.result,
  }) : assert(result != null);

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
class Result extends Equatable {
  @JsonKey(name: 'genesis')
  final Genesis genesis;

  Result({
    @required this.genesis,
  }) : assert(genesis != null);

  factory Result.fromJson(Map<String, dynamic> json) {
    return _$ResultFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ResultToJson(this);
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
  })  : assert(genesisTime != null),
        assert(appState != null);

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
