// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_proposal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TextProposal _$TextProposalFromJson(Map<String, dynamic> json) {
  return TextProposal(
    title: json['title'] as String,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$TextProposalToJson(TextProposal instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
    };
