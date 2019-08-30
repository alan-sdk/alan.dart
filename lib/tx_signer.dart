import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:sacco/models/export.dart';
import 'package:sacco/utils/account_data_retriever.dart';
import 'package:sacco/sacco.dart';

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
    // Get the account data from the network
    final account = await AccountDataRetrieval.getAccountData(wallet);

    // Sign each message
    final signatures = stdTx.messages
        .map((msg) =>
            _getStdSignature(wallet, account, msg, stdTx.fee, stdTx.memo))
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
    StdMsg message,
    StdFee fee,
    String memo,
  ) {
    // Create the signature object
    final signature = StdSignatureMessage(
      sequence: accountData.sequence,
      accountNumber: accountData.accountNumber,
      chainId: wallet.networkInfo.id,
      fee: fee.toJson(),
      memo: memo,
      msgs: [message.toJson()],
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
