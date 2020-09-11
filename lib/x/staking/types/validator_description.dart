import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'validator_description.g.dart';

/// Description defines a validator description.
@JsonSerializable(explicitToJson: true)
class ValidatorDescription extends Equatable {
  @JsonKey(name: 'moniker', includeIfNull: false)
  final String moniker;

  @JsonKey(name: 'identity', includeIfNull: false)
  final String identity;

  @JsonKey(name: 'website', includeIfNull: false)
  final String website;

  @JsonKey(name: 'security_contact', includeIfNull: false)
  final String securityContact;

  @JsonKey(name: 'details', includeIfNull: false)
  final String details;

  ValidatorDescription({
    this.moniker,
    this.identity,
    this.website,
    this.securityContact,
    this.details,
  });

  factory ValidatorDescription.fromJson(Map<String, dynamic> json) {
    return _$ValidatorDescriptionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ValidatorDescriptionToJson(this);
  }

  @override
  List<Object> get props {
    return [
      moniker,
      identity,
      website,
      securityContact,
      details,
    ];
  }
}
