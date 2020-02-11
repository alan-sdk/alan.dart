import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'genesis_response.g.dart';

/// Represents the contents of the response that is returned from the RPC
/// upon querying the /genesis endpoint.
@JsonSerializable(explicitToJson: true)
class GenesisResponse implements Equatable {
  @JsonKey(name: "result")
  final Result result;

  GenesisResponse({
    @required this.result,
  }) : assert(result != null);

  @override
  List<Object> get props => [result];

  factory GenesisResponse.fromJson(Map<String, dynamic> json) =>
      _$GenesisResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GenesisResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Result implements Equatable {
  @JsonKey(name: "genesis")
  final Genesis genesis;

  Result({
    @required this.genesis,
  }) : assert(genesis != null);

  @override
  List<Object> get props => [genesis];

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Genesis implements Equatable {
  @JsonKey(name: "genesis_time")
  final String genesisTime;

  @JsonKey(name: "app_state")
  final Map<String, dynamic> appState;

  Genesis({
    @required this.genesisTime,
    @required this.appState,
  })  : assert(genesisTime != null),
        assert(appState != null);

  @override
  List<Object> get props => [genesisTime, appState];

  factory Genesis.fromJson(Map<String, dynamic> json) =>
      _$GenesisFromJson(json);

  Map<String, dynamic> toJson() => _$GenesisToJson(this);
}
