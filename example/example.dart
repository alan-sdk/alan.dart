import 'package:alan/alan.dart';
import 'package:alan/proto/cosmos/bank/v1beta1/export.dart' as bank;

void main() async {
  // Create a wallet
  final networkInfo = NetworkInfo.fromSingleHost(
    bech32Hrp: 'desmos',
    host: 'localhost',
  );

  final mnemonic = [
    'roast',
    'stomach',
    'welcome',
    'please',
    'gauge',
    'funny',
    'coconut',
    'baby',
    'bird',
    'announce',
    'bind',
    'jacket',
    'title',
    'vibrant',
    'tomorrow',
    'indoor',
    'bitter',
    'initial',
    'ill',
    'analyst',
    'thought',
    'strike',
    'answer',
    'cotton',
  ];
  final wallet = Wallet.derive(mnemonic, networkInfo);

  // 3. Create and sign the transaction
  final message = bank.MsgSend.create()
    ..fromAddress = wallet.bech32Address
    ..toAddress = 'cosmos1cx7mec8x567xh8f4x7490ndx7xey8lnr9du2qy';
  message.amount.add(Coin.create()
    ..denom = 'uatom'
    ..amount = '100');

  final signer = TxSigner.fromNetworkInfo(networkInfo);
  final tx = await signer.createAndSign(wallet, [message]);

  // 4. Broadcast the transaction
  final txSender = TxSender.fromNetworkInfo(networkInfo);
  final response = await txSender.broadcastTx(tx);

  // Check the result
  if (response.isSuccessful) {
    print('Tx sent successfully. Response: ${response}');
  } else {
    print('Tx errored: ${response}');
  }
}
