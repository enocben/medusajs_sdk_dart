import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';

part 'generated/product_option.g.dart';

/// A product option's data
@JsonSerializable()
class ProductOptionDTO {
  /// The ID of the product option
  final String id;

  /// The title of the product option
  final String title;

  /// The associated product ID
  @JsonKey(name: 'product_id')
  final String? productId;

  /// Holds custom data in key-value pairs
  final Metadata metadata;

  /// When the product option was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// When the product option was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// When the product option was deleted
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  const ProductOptionDTO({
    required this.id,
    required this.title,
    this.productId,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });

  factory ProductOptionDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductOptionDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ProductOptionDTOToJson(this);
}

/// The product option value's data
@JsonSerializable()
class ProductOptionValueDTO {
  /// The ID of the product option value
  final String id;

  /// The value of the product option value
  final String value;

  /// The associated product option ID
  @JsonKey(name: 'option_id')
  final String? optionId;

  /// Holds custom data in key-value pairs
  final Metadata metadata;

  /// When the product option value was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// When the product option value was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// When the product option value was deleted
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  const ProductOptionValueDTO({
    required this.id,
    required this.value,
    this.optionId,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });

  factory ProductOptionValueDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductOptionValueDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ProductOptionValueDTOToJson(this);
}
