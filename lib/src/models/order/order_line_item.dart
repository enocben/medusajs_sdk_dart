import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';
import '../common/money.dart';
import 'order_tax_line.dart';
import 'order_adjustment_line.dart';
import 'order_item.dart';

part 'generated/order_line_item.g.dart';

/// The order line item details
@JsonSerializable()
class OrderLineItemDTO {
  /// The ID of the line item
  final String id;

  /// The title of the line item
  final String title;

  /// The subtitle of the line item
  final String? subtitle;

  /// The thumbnail of the line item
  final String? thumbnail;

  /// The ID of the variant associated with the line item
  @JsonKey(name: 'variant_id')
  final String? variantId;

  /// The ID of the product associated with the line item
  @JsonKey(name: 'product_id')
  final String? productId;

  /// The title of the product associated with the line item
  @JsonKey(name: 'product_title')
  final String? productTitle;

  /// The description of the product associated with the line item
  @JsonKey(name: 'product_description')
  final String? productDescription;

  /// The subtitle of the product associated with the line item
  @JsonKey(name: 'product_subtitle')
  final String? productSubtitle;

  /// The ID of the type of the product associated with the line item
  @JsonKey(name: 'product_type_id')
  final String? productTypeId;

  /// The type of the product associated with the line item
  @JsonKey(name: 'product_type')
  final String? productType;

  /// The collection of the product associated with the line item
  @JsonKey(name: 'product_collection')
  final String? productCollection;

  /// The handle of the product associated with the line item
  @JsonKey(name: 'product_handle')
  final String? productHandle;

  /// The SKU of the variant associated with the line item
  @JsonKey(name: 'variant_sku')
  final String? variantSku;

  /// The barcode of the variant associated with the line item
  @JsonKey(name: 'variant_barcode')
  final String? variantBarcode;

  /// The title of the variant associated with the line item
  @JsonKey(name: 'variant_title')
  final String? variantTitle;

  /// The option values of the variant associated with the line item
  @JsonKey(name: 'variant_option_values')
  final Map<String, dynamic>? variantOptionValues;

  /// Indicates whether the line item requires shipping
  @JsonKey(name: 'requires_shipping')
  final bool requiresShipping;

  /// Indicates whether the line item is discountable
  @JsonKey(name: 'is_discountable')
  final bool isDiscountable;

  /// Indicates whether the line item is a gift card
  @JsonKey(name: 'is_giftcard')
  final bool isGiftcard;

  /// Indicates whether the line item price is tax inclusive
  @JsonKey(name: 'is_tax_inclusive')
  final bool isTaxInclusive;

  /// The compare at unit price of the line item
  @JsonKey(name: 'compare_at_unit_price')
  final double? compareAtUnitPrice;

  /// The unit price of the line item
  @JsonKey(name: 'unit_price')
  final double unitPrice;

  /// The quantity of the line item
  final int quantity;

  /// The associated tax lines
  @JsonKey(name: 'tax_lines')
  final List<OrderLineItemTaxLineDTO>? taxLines;

  /// The associated adjustments
  final List<OrderLineItemAdjustmentDTO>? adjustments;

  /// The details of the item
  final OrderItemDTO detail;

  /// The date when the line item was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// The date when the line item was last updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// Holds custom data in key-value pairs
  final Metadata? metadata;

  // Totals
  /// The original total of the order line item
  @JsonKey(name: 'original_total')
  final BigNumberValue originalTotal;

  /// The original subtotal of the order line item
  @JsonKey(name: 'original_subtotal')
  final BigNumberValue originalSubtotal;

  /// The original tax total of the order line item
  @JsonKey(name: 'original_tax_total')
  final BigNumberValue originalTaxTotal;

  /// The item total of the order line item
  @JsonKey(name: 'item_total')
  final BigNumberValue itemTotal;

  /// The item subtotal of the order line item
  @JsonKey(name: 'item_subtotal')
  final BigNumberValue itemSubtotal;

  /// The item tax total of the order line item
  @JsonKey(name: 'item_tax_total')
  final BigNumberValue itemTaxTotal;

  /// The total of the order line item
  final BigNumberValue total;

  /// The subtotal of the order line item
  final BigNumberValue subtotal;

  /// The tax total of the order line item
  @JsonKey(name: 'tax_total')
  final BigNumberValue taxTotal;

  /// The discount total of the order line item
  @JsonKey(name: 'discount_total')
  final BigNumberValue discountTotal;

  /// The discount tax total of the order line item
  @JsonKey(name: 'discount_tax_total')
  final BigNumberValue discountTaxTotal;

  /// The refundable total of the order line item
  @JsonKey(name: 'refundable_total')
  final BigNumberValue refundableTotal;

  /// The refundable total per unit of the order line item
  @JsonKey(name: 'refundable_total_per_unit')
  final BigNumberValue refundableTotalPerUnit;

  const OrderLineItemDTO({
    required this.id,
    required this.title,
    this.subtitle,
    this.thumbnail,
    this.variantId,
    this.productId,
    this.productTitle,
    this.productDescription,
    this.productSubtitle,
    this.productTypeId,
    this.productType,
    this.productCollection,
    this.productHandle,
    this.variantSku,
    this.variantBarcode,
    this.variantTitle,
    this.variantOptionValues,
    required this.requiresShipping,
    required this.isDiscountable,
    required this.isGiftcard,
    required this.isTaxInclusive,
    this.compareAtUnitPrice,
    required this.unitPrice,
    required this.quantity,
    this.taxLines,
    this.adjustments,
    required this.detail,
    required this.createdAt,
    required this.updatedAt,
    this.metadata,
    required this.originalTotal,
    required this.originalSubtotal,
    required this.originalTaxTotal,
    required this.itemTotal,
    required this.itemSubtotal,
    required this.itemTaxTotal,
    required this.total,
    required this.subtotal,
    required this.taxTotal,
    required this.discountTotal,
    required this.discountTaxTotal,
    required this.refundableTotal,
    required this.refundableTotalPerUnit,
  });

  factory OrderLineItemDTO.fromJson(Map<String, dynamic> json) =>
      _$OrderLineItemDTOFromJson(json);

  Map<String, dynamic> toJson() => _$OrderLineItemDTOToJson(this);
}
