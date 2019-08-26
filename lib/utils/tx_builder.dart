import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:sacco/models/export.dart';
import 'package:sacco/utils/account_data_retriever.dart';

import 'map_sorter.dart';

/// Allows to easily build and sign a [StdTx] that can later be sent over
/// the network.
class TxBuilder {
  /// Given a [stdMessage] and an associated [memo] and [fee],
  /// builds a [StdTx] signing the necessary data using the given [wallet].
  static Future<StdTx> buildStdTx({
    @required HexWallet wallet,
    @required StdMsg stdMessage,
    @required String memo,
    @required StdFee fee,
  }) async {

    // Get the account data from the network
    final accountData = await AccountDataRetrieval.getAccountData(wallet);

    // Create the signature object
    final signature = StdSignatureMessage(
      sequence: accountData.sequence,
      accountNumber: accountData.accountNumber,
      chainId: wallet.chainInfo.id,
      fee: fee.toJson(),
      memo: memo,
      msgs: [stdMessage.toJson()],
    );

    // Convert the signature to a JSON and sort it
    final jsonSignature = signature.toJson();
    final sortedJson = MapSorter.sort(jsonSignature);

    // Encode the sorted JSON to a string
    final jsonSignData = json.encode(sortedJson);

    // Sign the message
    final signatureData = wallet.signTxData(jsonSignData);

    // Get the compressed Base64 public key
    final pubKeyCompressed = wallet.ecPublicKey.Q.getEncoded(true);
    final pubKeyBase64 = base64Encode(pubKeyCompressed);

    // Build the StdPublicKey
    final publicKey = StdPublicKey(
      type: "tendermint/PubKeySecp256k1",
      value: pubKeyBase64,
    );

    // Build the StdSignature
    final stdSignature = StdSignature(
      signature: base64Encode(signatureData),
      publicKey: publicKey,
    );

    // Assemble the transaction
    return StdTx(
      fee: fee,
      memo: memo,
      messages: [stdMessage],
      signatures: [stdSignature],
    );
  }
}
