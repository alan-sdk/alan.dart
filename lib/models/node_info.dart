import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class NodeInfo extends Equatable {
  final String network;

  NodeInfo({
    @required this.network,
  })  : assert(network != null),
        super([network]);
}
