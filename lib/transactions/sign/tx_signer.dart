import 'dart:convert';
import 'dart:typed_data';

import 'package:alan/alan.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

import 'map_sorter.dart';

/// Allows to easily sign a [StdTx] object that already contains a message.
class TxSigner {
  final AuthQuerier _authQuerier;
  final NodeQuerier _nodeQuerier;

  TxSigner({
    @required AuthQuerier authQuerier,
    @required NodeQuerier nodeQuerier,
  })  : _authQuerier = authQuerier,
        _nodeQuerier = nodeQuerier;

  /// Builds a new TxSigner from a given http client.
  factory TxSigner.build(http.Client httpClient) {
    return TxSigner(
      authQuerier: AuthQuerier(httpClient: httpClient),
      nodeQuerier: NodeQuerier(httpClient: httpClient),
    );
  }

  /// Signs the given [stdTx] using the info contained inside the
  /// given [wallet] and returns a new [StdTx] containing the signatures
  /// inside it.
  Future<StdTx> signStdTx(StdTx stdTx, Wallet wallet) async {
    // Get the account data and node info from the network
    final account = await _authQuerier.getAccountData(
      wallet.networkInfo.lcdUrl,
      wallet.bech32Address,
    );
    if (account == null) {
      throw Exception(
        'Account ${wallet.bech32Address} does not exist on chain',
      );
    }

    final nodeInfo = await _nodeQuerier.getNodeInfo(wallet.networkInfo.lcdUrl);

    // Sign all messages
    final signatures = _getStdSignature(
      wallet,
      account,
      nodeInfo,
      stdTx.messages,
      stdTx.fee,
      stdTx.memo,
    );

    // Assemble the transaction
    return StdTx(
      fee: stdTx.fee,
      memo: stdTx.memo,
      messages: stdTx.messages,
      signatures: [signatures],
    );
  }

  /// Converts the given data into an [StdSignature] object.
  StdSignature _getStdSignature(
    Wallet wallet,
    CosmosAccount accountData,
    NodeInfo nodeInfo,
    List<StdMsg> msgs,
    StdFee fee,
    String memo,
  ) {
    // Create the signature object
    final signature = StdSignatureMessage(
      sequence: accountData.sequence.toString(),
      accountNumber: accountData.accountNumber.toString(),
      chainId: nodeInfo.network,
      fee: fee,
      memo: memo,
      msgs: msgs,
    );

    // Convert the signature to a JSON and sort it
    final jsonSignature = signature.toJson();
    final sortedJson = MapSorter.sort(jsonSignature);

    // Encode the sorted JSON to a string and get the bytes
    var jsonData = json.encode(sortedJson);
    final bytes = utf8.encode(jsonData);

    // Sign the data
    final signatureData = wallet.signTxData(Uint8List.fromList(bytes));

    // Get the compressed Base64 public key
    final pubKeyCompressed = wallet.ecPublicKey.Q.getEncoded(true);

    // Build the StdSignature
    return StdSignature(
      value: base64Encode(signatureData),
      publicKey: StdPublicKey(
        type: 'tendermint/PubKeySecp256k1',
        value: base64Encode(pubKeyCompressed),
      ),
    );
  }
}
