import 'package:alan/alan.dart';
import 'package:alan/proto/cosmos/bank/v1beta1/export.dart' as bank;
import 'package:alan/proto/cosmwasm/wasm/v1/export.dart' as wasm;

import 'dart:convert';

void main() async {
  // Create a wallet

  final networkInfo =
      NetworkInfo.fromSingleHost(bech32Hrp: 'juno', host: 'localhost');

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
    ..toAddress = 'juno16g2rahf5846rxzp3fwlswy08fz8ccuwk03k57y';
  message.amount.add(Coin.create()
    ..denom = 'ujunox'
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

  var x = '''{
    "transfer": {
      "amount": "100",
      "owner": "juno1yp4hmgfd6kdz998wx42t235xs4vzced3zn2ca2",
      "recipient": "juno1jk8wjpe59nxp58hkkltd227ztrzuk2sjqfw8rd"
    }
  }''';
  final message2 = wasm.MsgExecuteContract.create()
    ..sender = wallet.bech32Address
    ..contract =
        'juno14hj2tavq8fpesdwxxcu44rty3hh90vhujrvcmstl4zr3txmfvw9skjuwg8'
    ..msg = utf8.encode(x);
  final signer2 = TxSigner.fromNetworkInfo(networkInfo);
  final tx2 = await signer2.createAndSign(wallet, [message2]);
  final txSender2 = TxSender.fromNetworkInfo(networkInfo);
  final response2 = await txSender2.broadcastTx(tx2);
  // Check the result
  if (response2.isSuccessful) {
    print('Tx sent successfully. Response: ${response2}');
  } else {
    print('Tx errored: ${response2}');
  }
}
