import 'package:json_annotation/json_annotation.dart';
import 'common/metadata.dart';
import 'product/product_variant.dart';
import 'product/product_option.dart';
import 'product/product_image.dart';
import 'product/product_collection.dart';
import 'product/product_category.dart';
import 'product/product_type.dart';
import 'product/product_tag.dart';

part 'generated/product.g.dart';

/// Product status
enum ProductStatus {
  @JsonValue('draft')
  draft,
  @JsonValue('proposed')
  proposed,
  @JsonValue('published')
  published,
  @JsonValue('rejected')
  rejected,
}

/// A product's data
@JsonSerializable()
class Product {
  /// The ID of the product
  final String id;

  /// The title of the product
  final String title;

  /// The handle of the product
  /// The handle can be used to create slug URL paths
  final String handle;

  /// The subtitle of the product
  final String? subtitle;

  /// The description of the product
  final String? description;

  /// Whether the product is a gift card
  @JsonKey(name: 'is_giftcard')
  final bool isGiftcard;

  /// The status of the product
  final ProductStatus status;

  /// The URL of the product's thumbnail
  final String? thumbnail;

  /// The width of the product
  final double? width;

  /// The weight of the product
  final double? weight;

  /// The length of the product
  final double? length;

  /// The height of the product
  final double? height;

  /// The origin country of the product
  @JsonKey(name: 'origin_country')
  final String? originCountry;

  /// The HS Code of the product
  @JsonKey(name: 'hs_code')
  final String? hsCode;

  /// The MID Code of the product
  @JsonKey(name: 'mid_code')
  final String? midCode;

  /// The material of the product
  final String? material;

  /// The associated product collection
  final ProductCollectionDTO? collection;

  /// The associated product collection ID
  @JsonKey(name: 'collection_id')
  final String? collectionId;

  /// The associated product categories
  final List<ProductCategoryDTO>? categories;

  /// The associated product type
  final ProductTypeDTO? type;

  /// The associated product type ID
  @JsonKey(name: 'type_id')
  final String? typeId;

  /// The associated product tags
  final List<ProductTagDTO> tags;

  /// The associated product variants
  final List<ProductVariantDTO> variants;

  /// The associated product options
  final List<ProductOptionDTO> options;

  /// The associated product images
  final List<ProductImageDTO> images;

  /// Whether the product can be discounted
  final bool? discountable;

  /// The ID of the product in an external system
  @JsonKey(name: 'external_id')
  final String? externalId;

  /// Holds custom data in key-value pairs
  final Metadata metadata;

  /// When the product was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// When the product was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// When the product was deleted
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  Product({
    required this.id,
    required this.title,
    required this.handle,
    this.subtitle,
    this.description,
    required this.isGiftcard,
    required this.status,
    this.thumbnail,
    this.width,
    this.weight,
    this.length,
    this.height,
    this.originCountry,
    this.hsCode,
    this.midCode,
    this.material,
    this.collection,
    this.collectionId,
    this.categories,
    this.type,
    this.typeId,
    this.tags = const [],
    this.variants = const [],
    this.options = const [],
    this.images = const [],
    this.discountable,
    this.externalId,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}

@JsonSerializable()
class ProductListResponse {
  final List<Product> products;
  final int count;
  final int offset;
  final int limit;

  ProductListResponse({
    required this.products,
    required this.count,
    required this.offset,
    required this.limit,
  });

  factory ProductListResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductListResponseToJson(this);
}
