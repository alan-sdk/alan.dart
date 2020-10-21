import 'package:alan/alan.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'text_proposal.g.dart';

/// Defines a standard text proposal whose changes need to be manually
/// updated in case of approval.
@JsonSerializable(explicitToJson: true)
class TextProposal extends ProposalContent {
  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'description')
  final String description;

  TextProposal({
    @required this.title,
    @required this.description,
  }) : super(title: title, description: description);

  factory TextProposal.fromJson(Map<String, dynamic> json) {
    return _$TextProposalFromJson(json);
  }

  @override
  Map<String, dynamic> asJson() {
    return _$TextProposalToJson(this);
  }

  @override
  List<Object> get props {
    return [title, description];
  }
}
