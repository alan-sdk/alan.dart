import 'dart:typed_data';

import 'package:alan/alan.dart';
import 'package:convert/convert.dart';
import 'package:pointycastle/export.dart';

class Bip32 {
  static const _bitcoinNetworkType = _NetworkType(
    wif: 0x80,
    bip32: _Bip32Type(public: 0x0488b21e, private: 0x0488ade4),
  );
  static const _UINT32_MAX = 4294967295; // 2^32 - 1
  static const _UINT31_MAX = 2147483647; // 2^31 - 1
  static const _HIGHEST_BIT = 0x80000000;
  static final _secp256k1 = ECCurve_secp256k1();

  /// Internal re-implementation of https://pub.dev/packages/bip32
  /// waiting for null-safety update.
  Bip32(
    this.privateKey,
    this._publicKey,
    this.chainCode,
    this.network, {
    this.depth = 0,
    this.index = 0,
    this.parentFingerprint = 0x00000000,
  });

  final Uint8List? privateKey;
  Uint8List? _publicKey;
  final Uint8List chainCode;
  final _NetworkType network;
  int depth;
  int index;
  int parentFingerprint;

  Uint8List get publicKey {
    if (_publicKey == null) {
      final ecc = Bip32EccCurve();

      _publicKey = ecc.pointFromScalar(privateKey!);
    }

    return _publicKey!;
  }

  set publicKey(Uint8List? publicKey) {
    if (publicKey == null) {
      final ecc = Bip32EccCurve();
      this.publicKey = ecc.pointFromScalar(privateKey!);
    }
  }

  Uint8List get identifier {
    final sha256 = SHA256Digest().process(publicKey);

    return RIPEMD160Digest().process(sha256);
  }

  Uint8List get fingerprint => identifier.sublist(0, 4);

  factory Bip32.fromPrivateKey({
    required Uint8List privateKey,
    required Uint8List chainCode,
    Bip32EccCurve? ecc,
  }) {
    ecc ??= Bip32EccCurve();

    if (privateKey.length != 32) {
      throw ArgumentError(
          'Expected property privateKey of type Buffer(Length: 32)');
    }

    if (!ecc.isPrivate(privateKey)) {
      throw ArgumentError('Private key not in range [1, n]');
    }

    return Bip32(privateKey, null, chainCode, _bitcoinNetworkType);
  }

  factory Bip32.fromPublicKey({
    required Uint8List publicKey,
    required Uint8List chainCode,
    Bip32EccCurve? ecc,
  }) {
    ecc ??= Bip32EccCurve();

    if (!ecc.isPoint(publicKey)) {
      throw ArgumentError('Point is not on the curve');
    }

    return Bip32(null, publicKey, chainCode, _bitcoinNetworkType);
  }

  factory Bip32.fromSeed(Uint8List seed) {
    if (seed.length < 16) {
      throw ArgumentError('Seed should be at least 128 bits');
    }

    if (seed.length > 64) {
      throw ArgumentError('Seed should be at most 512 bits');
    }

    final bitcointSeedKey = Uint8List.fromList('Bitcoin seed'.codeUnits);
    final hmac = HMac(SHA512Digest(), 128)..init(KeyParameter(bitcointSeedKey));

    final i = hmac.process(seed);
    final iL = i.sublist(0, 32);
    final iR = i.sublist(32);

    return Bip32.fromPrivateKey(privateKey: iL, chainCode: iR);
  }

  Bip32 derivePath(String path) {
    final regex = RegExp(r"^(m\/)?(\d+'?\/)*\d+'?$");
    if (!regex.hasMatch(path)) {
      throw ArgumentError('Expected BIP32 Path');
    }

    var splitPath = path.split('/');
    if (splitPath[0] == 'm') {
      if (parentFingerprint != 0) {
        throw ArgumentError('Expected master, got child');
      }

      splitPath = splitPath.sublist(1);
    }

    return splitPath.fold(this, (Bip32 prevHd, String indexStr) {
      int index;
      if (indexStr.substring(indexStr.length - 1) == "'") {
        index = int.parse(indexStr.substring(0, indexStr.length - 1));
        return prevHd.deriveHardened(index);
      } else {
        index = int.parse(indexStr);
        return prevHd.derive(index);
      }
    });
  }

  Bip32 derive(int index, {Bip32EccCurve? ecc}) {
    ecc ??= Bip32EccCurve();

    if (index > _UINT32_MAX || index < 0) {
      throw ArgumentError('Expected UInt32');
    }

    final isHardened = index >= _HIGHEST_BIT;
    final data = Uint8List(37);

    if (isHardened) {
      if (isNeutered()) {
        throw ArgumentError('Missing private key for hardened child key');
      }

      data[0] = 0x00;
      data.setRange(1, 33, privateKey!);
      data.buffer.asByteData().setUint32(33, index);
    } else {
      data.setRange(0, 33, publicKey);
      data.buffer.asByteData().setUint32(33, index);
    }

    final hmac = HMac(SHA512Digest(), 128)..init(KeyParameter(chainCode));
    final i = hmac.process(data);

    final iL = i.sublist(0, 32);
    final iR = i.sublist(32);

    if (!ecc.isPrivate(iL)) {
      return derive(index + 1);
    }

    Bip32 hd;
    if (!isNeutered()) {
      final ki = ecc.privateAdd(privateKey!, iL);

      if (ki == null) {
        return derive(index + 1);
      }

      hd = Bip32.fromPrivateKey(privateKey: ki, chainCode: iR);
    } else {
      final ki = ecc.pointAddScalar(publicKey, iL);

      if (ki == null) {
        return derive(index + 1);
      }

      hd = Bip32.fromPublicKey(publicKey: ki, chainCode: iR);
    }

    hd.depth = depth + 1;
    hd.index = index;
    hd.parentFingerprint = fingerprint.buffer.asByteData().getUint32(0);

    return hd;
  }

  Bip32 deriveHardened(int index) {
    if (index > _UINT31_MAX || index < 0) {
      throw ArgumentError('Expected UInt31');
    }

    return derive(index + _HIGHEST_BIT);
  }

  bool isNeutered() {
    return privateKey == null;
  }
}

class _NetworkType {
  const _NetworkType({required this.wif, required this.bip32});

  final int wif;
  final _Bip32Type bip32;
}

class _Bip32Type {
  const _Bip32Type({required this.public, required this.private});

  final int public;
  final int private;
}

class Bip32EccCurve {
  static final _ZERO32 = Uint8List.fromList(List.generate(32, (index) => 0));
  static final _EC_GROUP_ORDER = Uint8List.fromList(
    hex.decode(
        'fffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141'),
  );
  final _EC_P = Uint8List.fromList(hex.decode(
      'fffffffffffffffffffffffffffffffffffffffffffffffffffffffefffffc2f'));

  bool isPrivate(Uint8List x) {
    if (!isScalar(x)) {
      return false;
    }

    return _compare(x, _ZERO32) > 0 && // > 0
        _compare(x, _EC_GROUP_ORDER) < 0; // < G
  }

  bool isScalar(Uint8List x) {
    return x.length == 32;
  }

  int _compare(Uint8List a, Uint8List b) {
    final aa = a.toBigInt();
    final bb = b.toBigInt();

    if (aa == bb) {
      return 0;
    }

    if (aa > bb) {
      return 1;
    }

    return -1;
  }

  Uint8List? privateAdd(Uint8List d, Uint8List tweak) {
    if (!isPrivate(d)) {
      throw ArgumentError('d is not a Private Key');
    }

    if (!isOrderScalar(tweak)) {
      throw ArgumentError('Expected a tweak');
    }

    final dd = d.toBigInt();
    final tt = tweak.toBigInt();
    var dt = ((dd + tt) % Bip32._secp256k1.n).toUin8List();

    if (dt.length < 32) {
      final padLeadingZero = Uint8List(32 - dt.length);
      dt = Uint8List.fromList(padLeadingZero + dt);
    }

    if (!isPrivate(dt)) {
      return null;
    }

    return dt;
  }

  Uint8List? pointAddScalar(Uint8List p, Uint8List tweak) {
    if (!isPoint(p)) {
      throw ArgumentError('Expected a point');
    }

    if (!isOrderScalar(tweak)) {
      throw ArgumentError('Expected a tweak');
    }

    final pp = Bip32._secp256k1.curve.decodePoint(p);

    if (_compare(tweak, _ZERO32) == 0) {
      return pp!.getEncoded(true);
    }

    final tt = tweak.toBigInt();
    final qq = Bip32._secp256k1.G * tt;
    final uu = pp! + qq;

    if (uu!.isInfinity) {
      return null;
    }

    return uu.getEncoded(true);
  }

  bool isPoint(Uint8List p) {
    if (p.length < 33) {
      return false;
    }

    final t = p[0];
    final x = p.sublist(1, 33);

    if (_compare(x, _ZERO32) == 0) {
      return false;
    }

    if (_compare(x, _EC_P) == 1) {
      return false;
    }

    try {
      p.toBigInt();
    } catch (err) {
      return false;
    }

    if ((t == 0x02 || t == 0x03) && p.length == 33) {
      return true;
    }

    final y = p.sublist(33);
    if (_compare(y, _ZERO32) == 0) {
      return false;
    }

    if (_compare(y, _EC_P) == 1) {
      return false;
    }

    if (t == 0x04 && p.length == 65) {
      return true;
    }

    return false;
  }

  bool isOrderScalar(Uint8List x) {
    if (!isScalar(x)) {
      return false;
    }

    return _compare(x, _EC_GROUP_ORDER) < 0; // < G
  }

  Uint8List pointFromScalar(Uint8List d) {
    if (!isPrivate(d)) {
      throw ArgumentError('The argument must be a private key');
    }

    final dd = d.toBigInt();
    final pp = Bip32._secp256k1.G * dd;

    if (pp!.isInfinity) {
      throw Exception('Derived infinity');
    }

    return pp.getEncoded(true);
  }
}
