import 'package:alan/alan.dart';
import 'package:meta/meta.dart';

/// Defines a class that a proposal must implement.
abstract class ProposalContent extends Serializable {
  final String _title;
  final String _description;

  ProposalContent({
    @required String title,
    @required String description,
  })  : _title = title,
        _description = description;

  factory ProposalContent.fromJson(Map<String, dynamic> json) {
    return Codec.deserialize(json) as ProposalContent;
  }

  /// Validates a proposal's abstract contents returning an error if invalid.
  Exception validate() {
    if (_title == null || _title.isEmpty) {
      return Exception('Proposal title cannot be empty');
    }

    if (_title.length > 140) {
      return Exception('Proposal title cannot exceed 140 characters');
    }

    if (_description == null || _description.isEmpty) {
      return Exception('Proposal description cannot be empty');
    }

    if (_description.length > 5000) {
      return Exception('Proposal description cannot exceed 5000 characters');
    }

    return null;
  }
}
