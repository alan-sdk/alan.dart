import 'package:flutter/foundation.dart';

class NetworkInfo {
  final String id;
  final String bech32Hrp;
  final String lcdUrl;

  NetworkInfo({
    @required this.id,
    @required this.bech32Hrp,
    @required this.lcdUrl,
  })  : assert(id != null),
        assert(bech32Hrp != null),
        assert(lcdUrl != null);
}
