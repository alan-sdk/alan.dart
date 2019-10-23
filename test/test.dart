import 'package:sacco/sacco.dart';
import 'package:test/test.dart';

void main() {
  final mnemonic =
      "sibling auction sibling flavor judge foil tube dust work mixed crush action menu property project ride crouch hat mom scale start ill spare panther"
          .split(" ");

  test('StdTx with fee is signed correctly', () async {
    // Create the network info
    final networkInfo = NetworkInfo(
      bech32Hrp: "did:com:",
      lcdUrl: "http://localhost:1317",
    );

    // Create a wallet
    final wallet = Wallet.derive(mnemonic, networkInfo);
    expect(wallet.networkInfo, networkInfo);

    // Build a transaction
    final msg = StdMsg(
      type: "commercio/MsgShareDocument",
      value: {
        "sender": wallet.bech32Address,
        "recipients": ["did:com:15erw8aqttln5semks0vnqjy9yzrygzmjwh7vke"],
        "document": {
          "uuid": "a1514938-b546-4f0c-998d-075738290ace",
          "content_uri":
              "0C0170684683AA98D7A57ABB42E301B9E63DF0104CED1D7734268DA7388B56938B99AB55D5BDD409988E05F7F82E9A9CB21F52CC177BCEB556FF7EEC3110EEA6",
          "metadata": {
            "content_uri":
                "0C0170684683AA98D7A57ABB42E301B9E63DF0104CED1D7734268DA7388B56938B99AB55D5BDD409988E05F7F82E9A9CFA8412991D6ECFD4F86E3440202F5454A83AC6F5F078A4D352D2A1B32B97965A",
            "schema": {
              "uri":
                  "0C0170684683AA98D7A57ABB42E301B9E63DF0104CED1D7734268DA7388B5693E3C96946F43C3FB1C5F98FFDB29795245AAC407CAB60D4E90C873192DC05BC7109555EAB9C46F4BBE52DBB57315CC8B6",
              "version": "1.0.0"
            }
          },
          "checksum": {
            "value":
                "5fd924625f6ab16a19cc9807c7c506ae1813490e4ba675f843d5a10e0baacdb8",
            "algorithm": "sha256"
          },
          "encryption_data": {
            "keys": [
              {
                "recipient": "did:com:15erw8aqttln5semks0vnqjy9yzrygzmjwh7vke",
                "value":
                    "41f185f45e7c25348c12917cb8254dba6c65cecb30f2873a720471091a64c957bcd659c459d509d377a777940b2073fa0c40cbd7979fe13643b154ccadc6e7cadc8f91a3884868d0fc2718e308310665070ef9696e381481b899511cece4af38bc2c0e83d17748f51216c43f2deaf3e65bcd2da9f75fccddbbd1a059beabd8f184d24a11048751cb6e5060e45c3a81c2036c4da2eee730b3afbccc9a121b5f3736fe8560650c84bb768d6588fddf80634503d4f265483cbbf315cdd8dc311be83abc06465773b272b09d79c4a3c318791e594d44d316fbbfda5d6f6c746af867a12ab41cf8b59daacb755312ba5907700ec913b5e1fb38d889aecf7755b72da0"
              }
            ],
            "encrypted_data": [
              "content_uri",
              "metadata.content_uri",
              "metadata.schema.uri"
            ]
          }
        }
      },
    );
    final fee = StdFee(
      gas: "200000",
      amount: [StdCoin(amount: "200", denom: "ucommercio")],
    );
    final tx = TxBuilder.buildStdTx(stdMsgs: [msg], fee: fee);

    // Sign the transaction
    final signedTx = await TxSigner.signStdTx(wallet: wallet, stdTx: tx);
    expect(signedTx.signatures.length, 1);

    // Send the transaction
    final result =
        await TxSender.broadcastStdTx(wallet: wallet, stdTx: signedTx);
    expect(result.success, true);
  });
}
