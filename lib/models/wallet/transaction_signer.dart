import 'dart:typed_data';

import 'package:pointycastle/ecc/curves/secp256k1.dart';
import 'package:pointycastle/ecc/api.dart';
import 'package:pointycastle/signers/ecdsa_signer.dart';
import 'package:pointycastle/macs/hmac.dart';
import 'package:pointycastle/digests/sha256.dart';
import 'package:pointycastle/api.dart';

/// Helper class used to sign a transaction.
class TransactionSigner {
  // Constants
  static final BigInt _byteMask = BigInt.from(0xff);
  static final BigInt _prime = BigInt.parse(
    'fffffffffffffffffffffffffffffffffffffffffffffffffffffffefffffc2f',
    radix: 16,
  );

  static BigInt _bytesToInt(List<int> bytes) => _decodeBigInt(bytes);

  static Uint8List _intToBytes(BigInt number) => _encodeBigInt(number);

  static Uint8List _encodeBigInt(BigInt number) {
    final size = (number.bitLength + 7) >> 3;
    final result = Uint8List(size);
    var num = number;
    for (var i = 0; i < size; i++) {
      result[size - i - 1] = (num & _byteMask).toInt();
      num = num >> 8;
    }
    return result;
  }

  static BigInt _decodeBigInt(Uint8List bytes) {
    var result = BigInt.from(0);
    for (var i = 0; i < bytes.length; i++) {
      result += BigInt.from(bytes[bytes.length - i - 1]) << (8 * i);
    }
    return result;
  }

  static BigInt _recoverFromSignature(
      int recId, ECSignature sig, Uint8List msg, ECDomainParameters params) {
    final n = params.n;
    final i = BigInt.from(recId ~/ 2);
    final x = sig.r + (i * n);

    if (x.compareTo(_prime) >= 0) {
      return null;
    }

    final R = _decompressKey(x, (recId & 1) == 1, params.curve);
    if (!(R * n).isInfinity) {
      return null;
    }

    final e = _bytesToInt(msg);

    final eInv = (BigInt.zero - e) % n;
    final rInv = sig.r.modInverse(n);
    final srInv = (rInv * sig.s) % n;
    final eInvrInv = (rInv * eInv) % n;

    final q = (params.G * eInvrInv) + (R * srInv);

    final bytes = q.getEncoded(false);
    return _bytesToInt(bytes.sublist(1));
  }

  static ECPoint _decompressKey(BigInt xBN, bool yBit, ECCurve c) {
    List<int> x9IntegerToBytes(BigInt s, int qLength) {
      final bytes = _intToBytes(s);

      if (qLength < bytes.length) {
        return bytes.sublist(0, bytes.length - qLength);
      } else if (qLength > bytes.length) {
        final tmp = List<int>.filled(qLength, 0);

        final offset = qLength - bytes.length;
        for (var i = 0; i < bytes.length; i++) {
          tmp[i + offset] = bytes[i];
        }

        return tmp;
      }

      return bytes;
    }

    final compEnc = x9IntegerToBytes(xBN, 1 + ((c.fieldSize + 7) ~/ 8));
    compEnc[0] = yBit ? 0x03 : 0x02;
    return c.decodePoint(compEnc);
  }

  static Uint8List deriveFrom(
    Uint8List message,
    ECPrivateKey privateKey,
    ECPublicKey publicKey,
  ) {
    final ECDomainParameters _params = ECCurve_secp256k1();
    final _halfCurveOrder = _params.n >> 1;

    final ecdsaSigner = ECDSASigner(null, HMac(SHA256Digest(), 64))
      ..init(true, PrivateKeyParameter(privateKey));

    ECSignature ecSignature = ecdsaSigner.generateSignature(message);

    if (ecSignature.s.compareTo(_halfCurveOrder) > 0) {
      final canonicalS = _params.n - ecSignature.s;
      ecSignature = ECSignature(ecSignature.r, canonicalS);
    }

    final publicKeyBytes =
        Uint8List.view(publicKey.Q.getEncoded(false).buffer, 1);

    final publicKeyBigInt = _bytesToInt(publicKeyBytes);

    var recoveryID = -1;
    for (var i = 0; i < 4; i++) {
      final k = _recoverFromSignature(i, ecSignature, message, _params);
      if (k == publicKeyBigInt) {
        recoveryID = i;
        break;
      }
    }

    if (recoveryID == -1) {
      throw Exception('Invalid recoverable key');
    }

    return Uint8List.fromList(
      _intToBytes(ecSignature.r) + _intToBytes(ecSignature.s),
    );
  }
}
