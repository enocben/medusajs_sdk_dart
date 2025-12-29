import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';

part 'generated/product_variant.g.dart';

/// Product variant status
enum ProductVariantStatus {
  @JsonValue('draft')
  draft,
  @JsonValue('proposed')
  proposed,
  @JsonValue('published')
  published,
  @JsonValue('rejected')
  rejected,
}

/// A product variant's data
@JsonSerializable()
class ProductVariantDTO {
  /// The ID of the product variant
  final String id;

  /// The title of the product variant
  final String title;

  /// The SKU of the product variant
  final String? sku;

  /// The barcode of the product variant
  final String? barcode;

  /// The EAN of the product variant
  final String? ean;

  /// The UPC of the product variant
  final String? upc;

  /// Whether the product variant can be ordered when it's out of stock
  @JsonKey(name: 'allow_backorder')
  final bool allowBackorder;

  /// Whether the product variant's inventory should be managed by the core system
  @JsonKey(name: 'manage_inventory')
  final bool manageInventory;

  /// The thumbnail of the product variant from the product images
  final String? thumbnail;

  /// Whether the product variant requires shipping
  @JsonKey(name: 'requires_shipping')
  final bool requiresShipping;

  /// The HS Code of the product variant
  @JsonKey(name: 'hs_code')
  final String? hsCode;

  /// The origin country of the product variant
  @JsonKey(name: 'origin_country')
  final String? originCountry;

  /// The MID Code of the product variant
  @JsonKey(name: 'mid_code')
  final String? midCode;

  /// The material of the product variant
  final String? material;

  /// The weight of the product variant
  final double? weight;

  /// The length of the product variant
  final double? length;

  /// The height of the product variant
  final double? height;

  /// The width of the product variant
  final double? width;

  /// Holds custom data in key-value pairs
  final Metadata metadata;

  /// The associated product ID
  @JsonKey(name: 'product_id')
  final String? productId;

  /// The ranking of the variant among other variants associated with the product
  @JsonKey(name: 'variant_rank')
  final int? variantRank;

  /// When the product variant was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// When the product variant was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// When the product variant was deleted
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  const ProductVariantDTO({
    required this.id,
    required this.title,
    this.sku,
    this.barcode,
    this.ean,
    this.upc,
    required this.allowBackorder,
    required this.manageInventory,
    this.thumbnail,
    required this.requiresShipping,
    this.hsCode,
    this.originCountry,
    this.midCode,
    this.material,
    this.weight,
    this.length,
    this.height,
    this.width,
    this.metadata,
    this.productId,
    this.variantRank,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });

  factory ProductVariantDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductVariantDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ProductVariantDTOToJson(this);
}
