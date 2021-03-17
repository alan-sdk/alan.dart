import 'package:grpc/grpc.dart';

/// Contains a set of utility methods used to create commonly used gRPC headers.
class GrpcHeaders {
  /// Creates a new [CallOptions] that specifies the height for which to
  /// perform the query.
  static CallOptions height(int height) {
    return CallOptions(metadata: {
      'x-cosmos-block-height': height.toString(),
    });
  }
}
