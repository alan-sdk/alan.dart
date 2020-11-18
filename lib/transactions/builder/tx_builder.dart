import 'package:alan/alan.dart';
import 'package:fixnum/fixnum.dart' as fixnum;

/// Allows to easily build and sign a [StdTx] that can later be sent over
/// the network.
class TxBuilder {
  final Tx _stdTx;

  TxBuilder._(this._stdTx) : super();

  factory TxBuilder.create() {
    return TxBuilder._(Tx.create());
  }
  
  Tx getTx() {
    return _stdTx;
  }

  void setMsgs(List<StdMsg> messages) {
    final anys = messages.map((msg) {
      return Any.pack(msg.message(), typeUrlPrefix: '/' + msg.typeUrl());
    });

    // Create the body if non existing
    if (!_stdTx.hasBody()) {
      _stdTx.body = TxBody.create();
    }

    // Set the messages
    _stdTx.body.messages.clear();
    _stdTx.body.messages.addAll(anys);
  }

  void setSignatures(List<SignatureV2> signatures) {
    final signerInfos = List<SignerInfo>(signatures.length);
    final rawSigs = List<List<int>>(signatures.length);

    for (var index = 0; index < signatures.length; index++) {
      final data = signatures[index];

      final modeInfo = ModeInfo.create();
      if (data.data is SingleSignatureData) {
        modeInfo.single = ModeInfo_Single.create()
          ..mode = (data.data as SingleSignatureData).signMode;
        rawSigs[index] = (data.data as SingleSignatureData).signature;
      }

      signerInfos[index] = SignerInfo.create()
        ..modeInfo = modeInfo
        ..sequence = fixnum.Int64(data.sequence);
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

  void setMemo(String memo) {
    // Create the body if non existing
    if (!_stdTx.hasBody()) {
      _stdTx.body = TxBody.create();
    }

    // Set the body
    _stdTx.body.memo = memo;
  }

  void setFeeAmount(List<Coin> coins) {
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

  void setGasLimit(int limit) {
    // Create auth info if not existing
    if (!_stdTx.hasAuthInfo()) {
      _stdTx.authInfo = AuthInfo.create();
    }

    // Create fee if not existing
    if (!_stdTx.authInfo.hasFee()) {
      _stdTx.authInfo.fee = Fee.create();
    }

    // Set the gas limit
    _stdTx.authInfo.fee.gasLimit = fixnum.Int64(limit);
  }

  void setTimeoutHeight(int timeout) {
    // Create body if non existing
    if (!_stdTx.hasBody()) {
      _stdTx.body = TxBody.create();
    }

    // Set the timeout height
    _stdTx.body.timeoutHeight = fixnum.Int64(timeout);
  }
}
