import 'package:alan/models/export.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'account.g.dart';

/// Contains the data that is returned from a full node when querying
/// for the /auth/accounts/{address} REST API endpoint.
@immutable
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

  const CosmosAccount({
    @required this.address,
    @required this.accountNumber,
    @required this.sequence,
    @required this.coins,
  })  : assert(address != null),
        assert(accountNumber != null),
        assert(sequence != null),
        assert(coins != null);

  factory CosmosAccount.offline(String address) {
    return CosmosAccount(
      address: address,
      accountNumber: 0,
      sequence: 0,
      coins: [],
    );
  }

  factory CosmosAccount.fromJson(Map<String, dynamic> json) {
    return _$CosmosAccountFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CosmosAccountToJson(this);
  }

  @override
  String toString() {
    return 'AccountData { '
        'address: $address, '
        'accountNumber: $accountNumber, '
        'sequence: $sequence, '
        'coins: $coins '
        '}';
  }

  @override
  List<Object> get props {
    return [address, accountNumber, sequence, coins];
  }
}
