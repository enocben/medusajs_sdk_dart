import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';

part 'generated/product_type.g.dart';

/// A product type's data
@JsonSerializable()
class ProductTypeDTO {
  /// The ID of the product type
  final String id;

  /// The value of the product type
  final String value;

  /// Holds custom data in key-value pairs
  final Metadata metadata;

  /// When the product type was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// When the product type was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// When the product type was deleted
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  const ProductTypeDTO({
    required this.id,
    required this.value,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });

  factory ProductTypeDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductTypeDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ProductTypeDTOToJson(this);
}
