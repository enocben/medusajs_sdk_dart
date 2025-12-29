import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';
import '../common/money.dart';

part 'generated/cart_line_item.g.dart';

/// The cart line item details
@JsonSerializable()
class CartLineItemDTO {
  /// The ID of the line item
  final String id;

  /// The title of the line item
  final String title;

  /// The subtitle of the line item
  final String? subtitle;

  /// The line item's thumbnail
  final String? thumbnail;

  /// The line item's quantity in the cart
  final BigNumberValue quantity;

  /// The ID of the associated product
  @JsonKey(name: 'product_id')
  final String? productId;

  /// The title of the associated product
  @JsonKey(name: 'product_title')
  final String? productTitle;

  /// The description of the associated product
  @JsonKey(name: 'product_description')
  final String? productDescription;

  /// The subtitle of the associated product
  @JsonKey(name: 'product_subtitle')
  final String? productSubtitle;

  /// The type of the associated product
  @JsonKey(name: 'product_type')
  final String? productType;

  /// The type ID of the associated product
  @JsonKey(name: 'product_type_id')
  final String? productTypeId;

  /// The collection of the associated product
  @JsonKey(name: 'product_collection')
  final String? productCollection;

  /// The handle of the associated product
  @JsonKey(name: 'product_handle')
  final String? productHandle;

  /// The associated variant's ID of the line item
  @JsonKey(name: 'variant_id')
  final String? variantId;

  /// The sku of the associated variant
  @JsonKey(name: 'variant_sku')
  final String? variantSku;

  /// The barcode of the associated variant
  @JsonKey(name: 'variant_barcode')
  final String? variantBarcode;

  /// The title of the associated variant
  @JsonKey(name: 'variant_title')
  final String? variantTitle;

  /// Whether the line item requires shipping
  @JsonKey(name: 'requires_shipping')
  final bool requiresShipping;

  /// Whether the line item is discountable
  @JsonKey(name: 'is_discountable')
  final bool isDiscountable;

  /// Whether the line item is a gift card
  @JsonKey(name: 'is_giftcard')
  final bool isGiftcard;

  /// Whether the line item price is tax inclusive
  @JsonKey(name: 'is_tax_inclusive')
  final bool isTaxInclusive;

  /// The unit price of the item
  @JsonKey(name: 'unit_price')
  final BigNumberValue unitPrice;

  /// The ID of the associated cart
  @JsonKey(name: 'cart_id')
  final String cartId;

  /// Holds custom data in key-value pairs
  final Metadata metadata;

  /// When the line item was created
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  /// When the line item was updated
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  /// When the line item was deleted
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  const CartLineItemDTO({
    required this.id,
    required this.title,
    this.subtitle,
    this.thumbnail,
    required this.quantity,
    this.productId,
    this.productTitle,
    this.productDescription,
    this.productSubtitle,
    this.productType,
    this.productTypeId,
    this.productCollection,
    this.productHandle,
    this.variantId,
    this.variantSku,
    this.variantBarcode,
    this.variantTitle,
    required this.requiresShipping,
    required this.isDiscountable,
    required this.isGiftcard,
    required this.isTaxInclusive,
    required this.unitPrice,
    required this.cartId,
    this.metadata,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  factory CartLineItemDTO.fromJson(Map<String, dynamic> json) =>
      _$CartLineItemDTOFromJson(json);

  Map<String, dynamic> toJson() => _$CartLineItemDTOToJson(this);
}
