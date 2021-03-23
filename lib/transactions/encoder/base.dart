import 'dart:typed_data';

import 'package:alan/alan.dart';

/// [TxEncoder] marshals a transaction to bytes
typedef TxEncoder = Uint8List Function(Tx tx);
