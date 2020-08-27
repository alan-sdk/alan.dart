import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'network_info.g.dart';

/// Contains the information of a generic Cosmos-based network.
@JsonSerializable(explicitToJson: true)
class NetworkInfo extends Equatable {
  /// Bech32 human readable part of the addresses related to this network
  @JsonKey(name: 'bech32_hrp')
  final String bech32Hrp;

  /// URL of the LCD to call when wanting to query data for this network
  @JsonKey(name: 'lcd_url')
  final String lcdUrl;

  NetworkInfo({
    @required this.bech32Hrp,
    @required this.lcdUrl,
  })  : assert(bech32Hrp != null),
        assert(lcdUrl != null);

  @override
  List<Object> get props => [bech32Hrp, lcdUrl];

  @override
  String toString() => '{'
      'bech32Hrp: $bech32Hrp,'
      'lcdUrl: $lcdUrl'
      '}';

  factory NetworkInfo.fromJson(Map<String, dynamic> json) =>
      _$NetworkInfoFromJson(json);

  Map<String, dynamic> toJson() => _$NetworkInfoToJson(this);
}
