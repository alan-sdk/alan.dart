import 'dart:typed_data';

import 'package:bip39_mnemonic/bip39_mnemonic.dart' as bip39;

/// Wrapper around the Bip-39 library making it easier to deal with
/// mnemonic phrases.
class Bip39 {
  static const _separator = ' ';

  /// Returns [true] if the provided mnemonic is valid, or [false] otherwise.
  static bool validateMnemonic(List<String> mnemonic) {
    try{
      bip39.Mnemonic.fromWords(words: mnemonic).entropy;
    } catch (e) {
      return false;
    }
    return true;
  }
    

  /// Returns a seed from the provided mnemonic that can be used to generate
  /// a new wallet.
  static Uint8List mnemonicToSeed(List<String> mnemonic) {
    return Uint8List.fromList(bip39.Mnemonic.fromWords(words: mnemonic).seed);
  }

  /// Returns a randomly generated seed phrase.
  static List<String> generateMnemonic({int strength = 128}) {
    return bip39.Mnemonic.generate(bip39.Language.english, entropyLength: strength).words;
  }
}
