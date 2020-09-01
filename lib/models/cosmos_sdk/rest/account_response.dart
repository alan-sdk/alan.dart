import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'account.dart';

part 'account_response.g.dart';

/// Represents the response that is returned from the LCD upon
/// querying the /auth/accounts/{address} endpoint.
@JsonSerializable(explicitToJson: true)
class AccountResponse extends Equatable {
  @JsonKey(name: 'type')
  final String type;

  @JsonKey(name: 'value')
  final CosmosAccount accountData;

  AccountResponse({
    @required this.type,
    @required this.accountData,
  });

  factory AccountResponse.fromJson(Map<String, dynamic> json) {
    return _$AccountResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AccountResponseToJson(this);
  }

  @override
  List<Object> get props {
    return [type, accountData];
  }
}
