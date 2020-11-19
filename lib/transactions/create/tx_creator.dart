import 'dart:typed_data';

import 'package:alan/alan.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

/// Allows to easily sign a [StdTx] object that already contains a message.
class TxCreator {
  final AuthQuerier _authQuerier;
  final NodeQuerier _nodeQuerier;

  TxCreator({
    @required AuthQuerier authQuerier,
    @required NodeQuerier nodeQuerier,
  })  : _authQuerier = authQuerier,
        _nodeQuerier = nodeQuerier;

  /// Builds a new TxSigner from a given http client.
  factory TxCreator.build(http.Client httpClient) {
    return TxCreator(
      authQuerier: AuthQuerier(httpClient: httpClient),
      nodeQuerier: NodeQuerier(httpClient: httpClient),
    );
  }

  /// Signs the given [stdTx] using the info contained inside the
  /// given [wallet] and returns a new [StdTx] containing the signatures
  /// inside it.
  Future<Tx> generate(
    Wallet wallet,
    List<StdMsg> msgs, {
    TxConfig config,
    String memo,
    int gas,
    List<Coin> feeAmt,
  }) async {
    // Set the config to the default value if not given
    config ??= DefaultTxConfig.create();
    final signMode = config.defaultSignMode();

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

    // Set SignatureV2 with empty signatures, to set correct signer infos.
    final signature = SignatureV2(
      data: SingleSignatureData(signMode: signMode),
      sequence: account.sequence,
    );

    final tx = config.newTxBuilder();
    tx.setMsgs(msgs);
    tx.setSignatures(List.from([signature]));
    tx.setMemo(memo);
    tx.setFeeAmount(feeAmt);
    tx.setGasLimit(gas);

    final nodeInfo = await _nodeQuerier.getNodeInfo(wallet.networkInfo.lcdUrl);

    // Once all signer infos are set, sign the transaction
    final signerData = SignerData(
      chainId: nodeInfo.network,
      accountNumber: account.accountNumber,
      sequence: account.sequence,
    );

    final handler = config.signModeHandler();
    final signBytes = handler.getSignBytes(signMode, signerData, tx.getTx());
    final sig = wallet.sign(Uint8List.fromList(signBytes));

    // Update the signatures
    final newSignature = SignatureV2(
      data: SingleSignatureData(signMode: signMode, signature: sig),
      sequence: account.sequence,
    );
    tx.setSignatures([newSignature]);

    // Return the signed transaction
    return tx.getTx();
  }
}
