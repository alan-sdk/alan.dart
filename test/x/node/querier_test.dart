import 'package:alan/alan.dart';
import 'package:alan/proto/cosmos/base/tendermint/v1beta1/export.dart'
    as tendermint;
import 'package:alan/proto/cosmos/base/tendermint/v1beta1/query.pb.dart';
import 'package:alan/proto/tendermint/p2p/types.pb.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../../common.dart';
import 'querier_test.mocks.dart';

@GenerateMocks([tendermint.ServiceClient])
void main() {
  late tendermint.ServiceClient client;
  late NodeQuerier querier;

  setUp(() {
    client = MockServiceClient();
    querier = NodeQuerier(client: client);
  });

  group('getNodeInfo', () {
    test('returns correct data properly', () async {
      final req = tendermint.GetNodeInfoRequest();
      when(client.getNodeInfo(req)).thenAnswer((call) {
        final defaultNodeInfo = DefaultNodeInfo()..network = 'cosmoshub-4';

        final response = GetNodeInfoResponse.create()
          ..defaultNodeInfo = defaultNodeInfo;

        return MockResponseFuture.value(response);
      });

      final nodeInfo = await querier.getNodeInfo();
      expect(nodeInfo.network, 'cosmoshub-4');
    });

    test('throws exception with wrong response', () async {
      final req = tendermint.GetNodeInfoRequest();
      when(client.getNodeInfo(req)).thenAnswer((call) {
        return MockResponseFuture.value(GetNodeInfoResponse.create());
      });

      expect(() => querier.getNodeInfo(), throwsException);
    });
  });
}
