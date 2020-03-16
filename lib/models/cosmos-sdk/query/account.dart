import 'package:alan/models/export.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'account.g.dart';

/// Contains the data that is returned from a full node when querying
/// for the /auth/accounts/{address} REST API endpoint.
@JsonSerializable(explicitToJson: true)
class CosmosAccount extends Equatable {
  @JsonKey(name: "address")
  final String address;

  @JsonKey(name: "account_number")
  final int accountNumber;

  @JsonKey(name: "sequence")
  final int sequence;

  @JsonKey(name: "coins")
  final List<StdCoin> coins;

  CosmosAccount({
    @required this.address,
    @required this.accountNumber,
    @required this.sequence,
    @required this.coins,
  })  : assert(address != null),
        assert(accountNumber != null),
        assert(sequence != null),
        assert(coins != null);

  factory CosmosAccount.offline(String address) => CosmosAccount(
        address: address,
        accountNumber: 0,
        sequence: 0,
        coins: [],
      );

  @override
  String toString() => 'AccountData { '
      'address: $address, '
      'accountNumber: $accountNumber, '
      'sequence: $sequence, '
      'coins: $coins '
      '}';

  @override
  List<Object> get props => [address, accountNumber, sequence, coins];

  factory CosmosAccount.fromJson(Map<String, dynamic> json) =>
      _$CosmosAccountFromJson(json);

  Map<String, dynamic> toJson() => _$CosmosAccountToJson(this);
}
