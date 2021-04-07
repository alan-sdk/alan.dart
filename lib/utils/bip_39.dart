import 'dart:typed_data';

import 'package:bip39/bip39.dart' as bip39;

/// Wrapper around the Bip-39 library making it easier to deal with
/// mnemonic phrases.
class Bip39 {
  static const _SEPARATOR = ' ';

  /// Returns [true] if the provided mnemonic is valid, or [false] otherwise.
  static bool validateMnemonic(List<String> mnemonic) {
    return bip39.validateMnemonic(mnemonic.join(_SEPARATOR));
  }

  /// Returns a seed from the provided mnemonic that can be used to generate
  /// a new wallet.
  static Uint8List mnemonicToSeed(List<String> mnemonic) {
    return bip39.mnemonicToSeed(mnemonic.join(_SEPARATOR));
  }

  /// Returns a randomly generated seed phrase.
  static List<String> generateMnemonic({int strength = 128}) {
    return bip39.generateMnemonic(strength: strength).split(_SEPARATOR);
  }
}
