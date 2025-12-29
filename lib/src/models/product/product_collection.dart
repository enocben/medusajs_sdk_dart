import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';

part 'generated/product_collection.g.dart';

/// A product collection's data
@JsonSerializable()
class ProductCollectionDTO {
  /// The ID of the product collection
  final String id;

  /// The title of the product collection
  final String title;

  /// The handle of the product collection
  /// The handle can be used to create slug URL paths
  final String handle;

  /// Holds custom data in key-value pairs
  final Metadata metadata;

  /// When the product collection was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// When the product collection was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// When the product collection was deleted
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  const ProductCollectionDTO({
    required this.id,
    required this.title,
    required this.handle,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });

  factory ProductCollectionDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductCollectionDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ProductCollectionDTOToJson(this);
}
