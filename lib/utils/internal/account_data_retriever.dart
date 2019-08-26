import 'dart:convert';

import 'package:sacco/models/export.dart';
import 'package:http/http.dart' as http;
import 'package:sacco/models/transactions/export.dart';

/// Allows to easily retrieve the data of an account based on the information
/// contained inside a given [HexWallet].
class AccountDataRetrieval {
  /// Reads the account endpoint and retrieves data from it.
  static Future<AccountData> getAccountData(HexWallet wallet) async {
    print("Getting account data");

    // Build the models.wallet api url
    final endpoint =
        "${wallet.chainInfo.lcdUrl}/auth/accounts/${wallet.bech32Address}";

    // Get the server response
    final response = await http.Client().get(endpoint);
    if (response.statusCode != 200) {
      throw Exception(
        "Excpected status code 200 but got ${response.statusCode} - ${response.body}",
      );
    }

    // Parse the data
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    final value = json["value"] as Map<String, dynamic>;

    // Get the coins
    final coins = ((value["coins"] as List) ?? List())
        .map((coinMap) => StdCoin.fromJson(coinMap))
        .toList();

    return AccountData(
      accountNumber: value["account_number"],
      sequence: value["sequence"],
      coins: coins,
    );
  }
}
