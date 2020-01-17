import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'account_data.dart';

part 'account_data_response.g.dart';

/// Represents the response that is returned from the LCD upon
/// querying the /auth/accounts/{address} endpoint.
@JsonSerializable(explicitToJson: true)
class AccountDataResponse {
  @JsonKey(name: "type")
  final String type;

  @JsonKey(name: "value")
  final AccountData accountData;

  AccountDataResponse({
    @required this.type,
    @required this.accountData,
  })  : assert(type != null),
        assert(accountData != null);

  factory AccountDataResponse.fromJson(Map<String, dynamic> json) =>
      _$AccountDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AccountDataResponseToJson(this);
}
