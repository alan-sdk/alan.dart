import 'package:alan/alan.dart';

/// [TxConfig] defines an interface a client can utilize to generate an
/// application-defined concrete transaction type. The type returned must
/// implement [TxBuilder].
abstract class TxConfig {
  TxEncoder txEncoder();
  SignMode defaultSignMode();
  TxBuilder newTxBuilder();
  SignModeHandler signModeHandler();
}
