import 'package:alan/alan.dart';
import 'package:grpc/grpc.dart';
import 'package:test/test.dart';

void main() {
  group('GRPCInfo', () {
    group('toJson and fromJson work properly', () {
      test('with secure credentials', () {
        final channelCredential = ChannelCredentials.secure();
        final grpcInfo = GRPCInfo(
          host: 'localhost',
          port: 1111,
          credentials: channelCredential,
        );

        final channel = grpcInfo.getChannel();

        expect(channel.options.credentials.isSecure, true);

        final json = grpcInfo.toJson();
        final fromJson = GRPCInfo.fromJson(json);
        expect(fromJson, equals(grpcInfo));
      });

      test('with insecure credentials', () {
        final channelCredential = ChannelCredentials.insecure();
        final grpcInfo = GRPCInfo(
          host: 'localhost',
          port: 1111,
          credentials: channelCredential,
        );

        final channel = grpcInfo.getChannel();

        expect(channel.options.credentials.isSecure, false);

        final json = grpcInfo.toJson();
        final fromJson = GRPCInfo.fromJson(json);
        expect(fromJson, equals(grpcInfo));
      });
    });
  });
}
