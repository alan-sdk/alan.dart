import 'package:alan/alan.dart';

/// [SignatureV2] is a convenience type that is easier to use in application
/// logic than the protobuf [SignerInfo]'s and raw signature bytes.
/// It goes beyond the first sdk.Signature types by supporting sign modes and
/// explicitly nested multi-signatures.
/// It is intended to be used for both building and verifying signatures.
class SignatureV2 {
  /// Data is the actual data of the signature which includes SignMode's and
  /// the signatures themselves for either single or multi-signatures.
  final SignatureData data;

  /// Sequence is the sequence of this account. Only populated in
  /// SIGN_MODE_DIRECT.
  final int sequence;

  SignatureV2({
    this.data,
    this.sequence,
  });
}

/// SignatureData represents either a [SingleSignatureData] or
/// [MultiSignatureData].
/// It is a convenience type that is easier to use in business logic than
/// the encoded protobuf [ModeInfo]'s and raw signatures.
abstract class SignatureData {}

/// [SingleSignatureData] represents the signature and [SignMode] of a
/// single (non-multisig) signer
class SingleSignatureData extends SignatureData {
  final SignMode signMode;
  final List<int> signature;

  SingleSignatureData({
    this.signMode,
    this.signature,
  });
}

/// [SignerData] is the specific information needed to sign a transaction
/// that generally isn't included in the transaction body itself
class SignerData {
  /// [chainId] is the chain that this transaction is targeted
  final String chainId;

  /// [accountNumber] is the account number of the signer
  final int accountNumber;

  /// [sequence] is the account sequence number of the signer that is used
  /// for replay protection. This field is only useful for Legacy Amino signing,
  /// since in SIGN_MODE_DIRECT the account sequence is already in the signer
  /// info.
  final int sequence;

  SignerData({
    this.chainId,
    this.accountNumber,
    this.sequence,
  });
}
