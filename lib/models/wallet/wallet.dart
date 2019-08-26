import 'dart:convert';
import 'dart:typed_data';

import 'package:bitcoin_flutter/bitcoin_flutter.dart';
import 'package:bip39/bip39.dart' as bip39;
import 'package:flutter/foundation.dart';
import 'package:hex/hex.dart';
import 'package:pointycastle/export.dart';
import 'package:sacco/models/export.dart';
import 'package:sacco/utils/bech32_encoder.dart';

import 'transaction_signer.dart';

/// Represents a wallet which contains the hex private key, the hex public key
/// and the hex address.
/// In order to create one properly, the [HexWallet.derive] method should always
/// be used.
/// The associated [chainInfo] will be used when computing the [bech32Address]
/// associated with the wallet.
class HexWallet {
  final NetworkInfo chainInfo;

  final String address; // Hex address
  final String privateKey; // Hex private key
  final String publicKey; // Hex public key

  HexWallet({
    @required this.chainInfo,
    @required this.address,
    @required this.privateKey,
    @required this.publicKey,
  })  : assert(chainInfo != null),
        assert(privateKey != null),
        assert(publicKey != null);

  /// Derives the private key from the given [mnemonic] using the specified
  /// [derivationPath].
  factory HexWallet.derive(
    List<String> mnemonic,
    String derivationPath,
    NetworkInfo chainInfo,
  ) {
    // Get the seed as a string
    final seed = bip39.mnemonicToSeed(mnemonic.join(' '));

    // Get the HD models.wallet from the seed
    final mainNode = HDWallet.fromSeed(seed);

    // Get the node from the derivation path
    final derivedNode = mainNode.derivePath(derivationPath);

    // Read the node as the private key
    final privateKeyBytes = HEX.decode(derivedNode.privKey);

    // Get the curve data
    final secp256k1 = ECCurve_secp256k1();
    final point = secp256k1.G;

    // Compute the curve point associated to the private key
    final bigInt = BigInt.parse(HEX.encode(privateKeyBytes), radix: 16);
    final curvePoint = point * bigInt;

    // Get the public key
    final publicKeyBytes = curvePoint.getEncoded();

    // Get the address
    final sha256Digest = SHA256Digest().process(publicKeyBytes);
    final address = RIPEMD160Digest().process(sha256Digest);

    // Return the key bytes
    return HexWallet(
      address: HEX.encode(address),
      publicKey: HEX.encode(publicKeyBytes),
      privateKey: HEX.encode(privateKeyBytes),
      chainInfo: chainInfo,
    );
  }

  /// Returns the associated [address] as a Bech32 string.
  String get bech32Address =>
      Bech32Encoder.encode('${chainInfo.bech32Hrp}', HEX.decode(address));

  /// Returns the associated [privateKey] as an [ECPrivateKey] instance.
  ECPrivateKey get ecPrivateKey =>
      ECPrivateKey(BigInt.parse(privateKey), ECCurve_secp256k1());

  /// Returns the associated [publicKey] as an [ECPublicKey] instance.
  ECPublicKey get ecPublicKey =>
      ECPublicKey(ECCurve_secp256k1().G * ecPrivateKey.d, ECCurve_secp256k1());

  /// Signs the given [data] using the associated [privateKey].
  Uint8List signTxData(String data) {
    // Create a Sha256 of the message
    final bytes = utf8.encode(data);
    final hash = SHA256Digest().process(bytes);

    // Compute the signature
    return TransactionSigner.deriveFrom(hash, ecPrivateKey, ecPublicKey);
  }
}
