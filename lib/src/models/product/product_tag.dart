import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';

part 'generated/product_tag.g.dart';

/// A product tag's data
@JsonSerializable()
class ProductTagDTO {
  /// The ID of the product tag
  final String id;

  /// The value of the product tag
  final String value;

  /// Holds custom data in key-value pairs
  final Metadata metadata;

  const ProductTagDTO({required this.id, required this.value, this.metadata});

  factory ProductTagDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductTagDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ProductTagDTOToJson(this);
}
