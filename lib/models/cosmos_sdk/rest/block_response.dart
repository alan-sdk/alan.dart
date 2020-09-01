import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'block_response.g.dart';

/// Represents the response that is returned when querying a block
/// details from the chain.
@JsonSerializable(explicitToJson: true)
class BlockResponse extends Equatable {
  @JsonKey(name: 'block_meta')
  final BlockMeta blockMeta;

  BlockResponse({@required this.blockMeta});

  factory BlockResponse.fromJson(Map<String, dynamic> json) {
    return _$BlockResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$BlockResponseToJson(this);
  }

  @override
  List<Object> get props => [blockMeta];
}

/// Contains the metadata of a block queried from the chain.
@JsonSerializable(explicitToJson: true)
class BlockMeta extends Equatable {
  @JsonKey(name: 'header')
  final BlockHeader header;

  BlockMeta({@required this.header});

  factory BlockMeta.fromJson(Map<String, dynamic> json) {
    return _$BlockMetaFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$BlockMetaToJson(this);
  }

  @override
  List<Object> get props => [header];
}

/// Contains the details of the header of a block metadata queried from
/// the chain.
@JsonSerializable(explicitToJson: true)
class BlockHeader extends Equatable {
  @JsonKey(name: 'height')
  final String height;

  BlockHeader({@required this.height});

  factory BlockHeader.fromJson(Map<String, dynamic> json) {
    return _$BlockHeaderFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$BlockHeaderToJson(this);
  }

  @override
  List<Object> get props => [height];
}
