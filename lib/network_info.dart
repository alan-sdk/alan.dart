import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

/// Contains the information of a generic Cosmos-based network.
class NetworkInfo extends Equatable {
  final String bech32Hrp; // Bech32 human readable part
  final String lcdUrl; // Url to call when accessing the LCD

  // Optional fields
  final String name; // Human readable chain name
  final String iconUrl; // Chain icon url
  final String defaultTokenDenom;

  NetworkInfo({
    @required this.bech32Hrp,
    @required this.lcdUrl,
    this.name = "",
    this.iconUrl = "",
    this.defaultTokenDenom,
  })  : assert(bech32Hrp != null),
        assert(lcdUrl != null);

  @override
  List<Object> get props => [
        bech32Hrp,
        lcdUrl,
        name,
        iconUrl,
        defaultTokenDenom,
      ];

  factory NetworkInfo.fromJson(Map<String, dynamic> json) {
    return NetworkInfo(
      bech32Hrp: json['bech32_hrp'] as String,
      lcdUrl: json['lcd_url'] as String,
      name: json['name'] as String,
      iconUrl: json['icon_url'] as String,
      defaultTokenDenom: json['default_token_denom'] as String,
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'bech32_hrp': this.bech32Hrp,
        'lcd_url': this.lcdUrl,
        'name': this.name,
        'icon_url': this.iconUrl,
        'default_token_denom': this.defaultTokenDenom,
      };
}
