import 'package:meta/meta.dart';

/// Contains the information of a generic Cosmos-based network.
class NetworkInfo {
  final String id; // chain-id
  final String bech32Hrp; // Bech32 human readable part
  final String lcdUrl; // Url to call when accessing the LCD

  NetworkInfo({
    @required this.id,
    @required this.bech32Hrp,
    @required this.lcdUrl,
  })  : assert(id != null),
        assert(bech32Hrp != null),
        assert(lcdUrl != null);
}
