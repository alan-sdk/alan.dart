import 'package:alan/alan.dart';
import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:protobuf/protobuf.dart';

/// Allows to easily build and sign a [Tx] that can later be sent over
/// the network.
class TxBuilder {
  final Tx _stdTx;

  TxBuilder._(this._stdTx);

  factory TxBuilder.create() {
    return TxBuilder._(Tx.create());
  }

  /// Returns the built [Tx]
  Tx getTx() {
    return _stdTx;
  }

  /// Sets the given [messages] as the transaction messages.
  void setMsgs(List<GeneratedMessage> messages) {
    final serialized = messages.map((msg) => Codec.serialize(msg)).toList();

    // Create the body if non existing
    if (!_stdTx.hasBody()) {
      _stdTx.body = TxBody.create();
    }

    // Set the messages
    _stdTx.body.messages.clear();
    _stdTx.body.messages.addAll(serialized);
  }

  /// Sets the given [signatures] as the transaction sigantures.
  void setSignatures(List<SignatureV2> signatures) {
    final signerInfos = <SignerInfo>[];
    final rawSigs = <List<int>>[];

    for (var index = 0; index < signatures.length; index++) {
      final signature = signatures[index];
      if (!(signature.data is SingleSignatureData)) {
        throw Exception('Signature data not supported: ${signature.data}');
      }

      final data = signature.data as SingleSignatureData;
      if (data.signature != null) {
        rawSigs.add(data.signature!);
      }

      final single = ModeInfo_Single.create()..mode = data.signMode;
      final modeInfo = ModeInfo.create()..single = single;

      final signerInfo = SignerInfo.create()
        ..modeInfo = modeInfo
        ..publicKey = signature.pubKey;

      // Do not include default values as per ADR-027
      if (signature.sequence > 0) {
        signerInfo.sequence = signature.sequence;
      }

      signerInfos.add(signerInfo);
    }

    // Set the raw signatures
    _stdTx.signatures.clear();
    _stdTx.signatures.addAll(rawSigs);

    // Create the AuthInfo if not existing
    if (!_stdTx.hasAuthInfo()) {
      _stdTx.authInfo = AuthInfo.create();
    }

    // Set the signer infos
    _stdTx.authInfo.signerInfos.clear();
    _stdTx.authInfo.signerInfos.addAll(signerInfos);
  }

  /// Sets the given [memo] inside the transactions.
  void setMemo(String? memo) {
    // Do not include default values as per ADR-027
    if (memo == null || memo.isEmpty) {
      return;
    }

    // Create the body if non existing
    if (!_stdTx.hasBody()) {
      _stdTx.body = TxBody.create();
    }

    // Set the memo
    _stdTx.body.memo = memo;
  }

  /// Sets the given [coins] as the transaction fees.
  void setFeeAmount(List<Coin>? coins) {
    // Do not include default values as per ADR-027
    if (coins == null || coins.isEmpty) {
      return;
    }

    // Create auth info if not existing
    if (!_stdTx.hasAuthInfo()) {
      _stdTx.authInfo = AuthInfo.create();
    }

    // Create fee if not existing
    if (!_stdTx.authInfo.hasFee()) {
      _stdTx.authInfo.fee = Fee.create();
    }

    // Set the fee amount
    _stdTx.authInfo.fee.amount.clear();
    _stdTx.authInfo.fee.amount.addAll(coins);
  }

  /// Sets the given [payer] as the transaction fee payer.
  void setFeePayer(String? payer) {
    // Do not include default values as per ADR-027
    if (payer == null || payer.isEmpty) {
      return;
    }

    // Create auth info if not existing
    if (!_stdTx.hasAuthInfo()) {
      _stdTx.authInfo = AuthInfo.create();
    }

    // Create fee if not existing
    if (!_stdTx.authInfo.hasFee()) {
      _stdTx.authInfo.fee = Fee.create();
    }

    // Set the fee amount
    _stdTx.authInfo.fee.payer = payer;
  }

  /// Sets the given [granter] as the transaction fee granter.
  void setFeeGranter(String? granter) {
    // Do not include default values as per ADR-027
    if (granter == null || granter.isEmpty) {
      return;
    }

    // Create auth info if not existing
    if (!_stdTx.hasAuthInfo()) {
      _stdTx.authInfo = AuthInfo.create();
    }

    // Create fee if not existing
    if (!_stdTx.authInfo.hasFee()) {
      _stdTx.authInfo.fee = Fee.create();
    }

    // Set the fee amount
    _stdTx.authInfo.fee.granter = granter;
  }

  /// Sets the given [limit] as the gas limit to be used to execute
  /// the transaction.
  void setGasLimit(fixnum.Int64? limit) {
    // Do not include default values as per ADR-027
    if (limit == null || limit == 0) {
      return;
    }

    // Create auth info if not existing
    if (!_stdTx.hasAuthInfo()) {
      _stdTx.authInfo = AuthInfo.create();
    }

    // Create fee if not existing
    if (!_stdTx.authInfo.hasFee()) {
      _stdTx.authInfo.fee = Fee.create();
    }

    // Set the gas limit
    _stdTx.authInfo.fee.gasLimit = limit;
  }

  /// Sets the given [timeout] to be the number of blocks in which to
  /// execute the transaction.
  void setTimeoutHeight(int? timeout) {
    // Do not include default values as per ADR-027
    if (timeout == null || timeout == 0) {
      return;
    }

    // Create body if non existing
    if (!_stdTx.hasBody()) {
      _stdTx.body = TxBody.create();
    }

    // Set the timeout height
    _stdTx.body.timeoutHeight = fixnum.Int64(timeout);
  }
}
