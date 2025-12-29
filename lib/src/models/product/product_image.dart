import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';

part 'generated/product_image.g.dart';

/// The product image's data
@JsonSerializable()
class ProductImageDTO {
  /// The ID of the product image
  final String id;

  /// The URL of the product image
  final String url;

  /// The rank of the product image
  final int rank;

  /// Holds custom data in key-value pairs
  final Metadata metadata;

  /// When the product image was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// When the product image was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// When the product image was deleted
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  const ProductImageDTO({
    required this.id,
    required this.url,
    required this.rank,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });

  factory ProductImageDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductImageDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ProductImageDTOToJson(this);
}
