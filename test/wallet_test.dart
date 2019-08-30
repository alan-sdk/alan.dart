import 'package:test/test.dart';

import 'package:sacco/sacco.dart';

void main() {
  final derivationPath = "m/44'/118'/0'/0/0";
  final networkInfo = NetworkInfo(id: "", bech32Hrp: "cosmos", lcdUrl: "");

  final testVectors = {
    "cosmos1huydeevpz37sd9snkgul6070mstupukw00xkw9":
        "final random flame cinnamon grunt hazard easily mutual resist pond solution define knife female tongue crime atom jaguar alert library best forum lesson rigid",
    "cosmos12lla7fg3hjd2zj6uvf4pqj7atx273klc487c5k":
        "must lottery surround bike cash option split aspect cram volume repeat goose enemy mouse ostrich crowd thing huge fiscal fuel canal tuna hair educate",
    "cosmos1wclftxxzt2sshqz0xtq4rxtk82wawyg6y2uafs":
        "pencil flat shed laundry idle phone glow hint dilemma roast bulb shop spice birth rigid project bar night song pluck then illegal obvious syrup",
    "cosmos1sc0ppj28frtyeqgs9gjk39lfd78507s3cu9e5k":
        "embrace subway again gift toilet price security ordinary zoo owner orbit age destroy invest little scheme crumble leisure remove muffin shoe deliver defy draw",
    "cosmos1l8yr93zkltwzdphd8g6073jgxslmf2pax7ml77":
        "garage jungle error orient puzzle crater cancel walk tissue fence dynamic bean aisle ring adult truth dog chapter claw six exhaust soda planet cycle",
    "cosmos1gmf3mqgxy6s89ac0n2uwxaw7ax5js88e7a5jgh":
        "seven confirm glass lawsuit flower test power rain animal argue fetch play local erupt curious certain february hover zone carpet pipe alarm capable box",
    "cosmos17c7nap702zdjwlqu6aystxy23kk252my4gkkfp":
        "minor craft between drive depart endorse fresh blade drill help skull hub evolve door sea comic pulse chicken awesome rebel leave series live brain",
    "cosmos1m87tazfksqu8d6cxwaexzg2e7w9a5q9nwjt2sc":
        "hurdle satisfy excess hub month great ordinary crane begin laugh evoke domain humor absent dawn blanket prefer ice ripple auto boost vast version soup",
    "cosmos1ase8zsfkqgvxw8yynfklq73u5utff0xxyzam58":
        "pipe apple lobster gadget front cloud reject whip village idle ready concert general scrub silver neutral crop oyster tackle enlist winner milk duty tomato",
    "cosmos1vwf547ntuvt69u46vzyzwwffmuxyhx9c7kx7st":
        "solve retire concert illegal garage recall skill power lyrics bunker vintage silver situate gadget talent settle left snow fire bubble bar robot swing senior"
  };

  test('Wallets are generated correctly', () {
    testVectors.forEach((address, mnemonicString) {
      final mnemonic = mnemonicString.split(" ");
      final wallet = Wallet.derive(mnemonic, derivationPath, networkInfo);
      expect(wallet.bech32Address, address);
    });
  });

  test('toJson and fromJson work properly', () {
    final mnemonic =
        "final random flame cinnamon grunt hazard easily mutual resist pond solution define knife female tongue crime atom jaguar alert library best forum lesson rigid"
            .split(" ");
    final wallet = Wallet.derive(mnemonic, derivationPath, networkInfo);

    final jsonWallet = wallet.toJson();

    final privateKey = wallet.privateKey;
    final retrievedWallet = Wallet.fromJson(jsonWallet, privateKey);

    expect(wallet, retrievedWallet);
  });
}
