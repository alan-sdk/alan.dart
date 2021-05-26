import 'package:alan/alan.dart';
import 'package:grpc/grpc.dart';
import 'package:test/test.dart';

void main() {
  group('GRPCInfo', () {
    group('toJson and fromJson work properly', () {
      test('with secure credentials', () {
        final grpcInfo = GRPCInfo(
          host: 'localhost',
          port: 1111,
          credentials: ChannelCredentials.secure(),
        );

        final json = grpcInfo.toJson();
        final fromJson = GRPCInfo.fromJson(json);
        expect(fromJson, equals(grpcInfo));
      });

      test('with insecure credentials', () {
        final grpcInfo = GRPCInfo(
          host: 'localhost',
          port: 1111,
          credentials: ChannelCredentials.insecure(),
        );

        final json = grpcInfo.toJson();
        final fromJson = GRPCInfo.fromJson(json);
        expect(fromJson, equals(grpcInfo));
      });
    });
  });
}
