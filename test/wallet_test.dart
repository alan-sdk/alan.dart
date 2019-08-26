import 'package:flutter_test/flutter_test.dart';

import 'package:sacco/hex_wallet.dart';
import 'package:sacco/models/export.dart';

void main() {
  test('wallet is generated correctly', () {
    final mnemonic = List<String>();
    mnemonic.add("vote");
    mnemonic.add("connect");
    mnemonic.add("year");
    mnemonic.add("glare");
    mnemonic.add("hair");
    mnemonic.add("length");
    mnemonic.add("idle");
    mnemonic.add("double");
    mnemonic.add("minute");
    mnemonic.add("unfold");
    mnemonic.add("busy");
    mnemonic.add("easily");
    mnemonic.add("screen");
    mnemonic.add("document");
    mnemonic.add("tiger");
    mnemonic.add("crush");
    mnemonic.add("task");
    mnemonic.add("hair");
    mnemonic.add("lunar");
    mnemonic.add("payment");
    mnemonic.add("shift");
    mnemonic.add("then");
    mnemonic.add("rail");
    mnemonic.add("sponsor");

    final derivationPath = "m/44'/118'/0'/0/0";
    final networkInfo = NetworkInfo(id: "", bech32Hrp: "cosmos", lcdUrl: "");
    final wallet = HexWallet.derive(mnemonic, derivationPath, networkInfo);

    expect(
      wallet.bech32Address,
      "cosmos1ehkajh8alnmaer3csd7n8cy4zm8fd9693d3hk6",
    );
  });
}
