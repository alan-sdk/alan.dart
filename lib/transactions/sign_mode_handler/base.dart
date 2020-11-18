import 'package:alan/alan.dart';

/// [SignModeHandler] defines a interface to be implemented by types which
/// will handle [SignMode]'s by generating sign bytes
/// from a [Tx] and [SignerData].
abstract class SignModeHandler {
  /// [modes] is the list of modes supported by this handler
  List<SignMode> get modes;

  /// [getSignBytes] returns the sign bytes for the provided [SignMode],
  /// [SignerData] and [Tx], or an error
  List<int> getSignBytes(SignMode mode, SignerData data, Tx tx);
}
