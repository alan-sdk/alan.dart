import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:sacco/sacco.dart';
import 'package:sacco/utils/export.dart';

import 'utils/map_sorter.dart';

/// Allows to easily sign a [StdTx] object that already contains a message.
class TxSigner {
  /// Signs the given [stdTx] using the info contained inside the
  /// given [wallet] and returns a new [StdTx] containing the signatures
  /// inside it.
  static Future<StdTx> signStdTx({
    @required Wallet wallet,
    @required StdTx stdTx,
  }) async {
    // Get the account data and node info from the network
    final account = await AccountDataRetrieval.getAccountData(wallet);
    final nodeInfo = await NodeInfoRetrieval.getNodeInfo(wallet);

    // Sign each message
    final signatures = stdTx.messages
        .map((msg) => _getStdSignature(
              wallet,
              account,
              nodeInfo,
              msg,
              stdTx.fee,
              stdTx.memo,
            ))
        .toList();

    // Assemble the transaction
    return StdTx(
      fee: stdTx.fee,
      memo: stdTx.memo,
      messages: stdTx.messages,
      signatures: signatures,
    );
  }

  static StdSignature _getStdSignature(
    Wallet wallet,
    AccountData accountData,
    NodeInfo nodeInfo,
    StdMsg message,
    StdFee fee,
    String memo,
  ) {
    // Create the signature object
    final signature = StdSignatureMessage(
      sequence: accountData.sequence,
      accountNumber: accountData.accountNumber,
      chainId: nodeInfo.network,
      fee: fee.toJson(),
      memo: memo,
      msgs: [message.toJson()],
    );

    // Convert the signature to a JSON and sort it
    final jsonSignature = signature.toJson();
    final sortedJson = MapSorter.sort(jsonSignature);

    // Encode the sorted JSON to a string and get the bytes
    var jsonData = json.encode(sortedJson);
    final bytes = utf8.encode(jsonData);

    // Sign the data
    final signatureData = wallet.signTxData(bytes);

    // Get the compressed Base64 public key
    final pubKeyCompressed = wallet.ecPublicKey.Q.getEncoded(true);

    // Build the StdSignature
    return StdSignature(
      value: base64Encode(signatureData),
      publicKey: StdPublicKey(
        type: "tendermint/PubKeySecp256k1",
        value: base64Encode(pubKeyCompressed),
      ),
    );
  }
}
