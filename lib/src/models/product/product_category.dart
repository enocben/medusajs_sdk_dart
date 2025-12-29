import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';

part 'generated/product_category.g.dart';

/// A product category's data
@JsonSerializable()
class ProductCategoryDTO {
  /// The ID of the product category
  final String id;

  /// The name of the product category
  final String name;

  /// The description of the product category
  final String description;

  /// The handle of the product category
  /// The handle can be used to create slug URL paths
  final String handle;

  /// Whether the product category is active
  @JsonKey(name: 'is_active')
  final bool isActive;

  /// Whether the product category is internal
  /// This can be used to only show the product category to admins and hide it from customers
  @JsonKey(name: 'is_internal')
  final bool isInternal;

  /// The ranking of the product category among sibling categories
  final int rank;

  /// Holds custom data in key-value pairs
  final Metadata metadata;

  /// The associated parent category ID
  @JsonKey(name: 'parent_category_id')
  final String? parentCategoryId;

  /// When the product category was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// When the product category was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// When the product category was deleted
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  const ProductCategoryDTO({
    required this.id,
    required this.name,
    required this.description,
    required this.handle,
    required this.isActive,
    required this.isInternal,
    required this.rank,
    this.metadata,
    this.parentCategoryId,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });

  factory ProductCategoryDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ProductCategoryDTOToJson(this);
}
