import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';
import '../common/money.dart';
import 'order_address.dart';
import 'order_line_item.dart';
import 'order_shipping_method.dart';
import 'order_summary.dart';

part 'generated/order.g.dart';

/// The order's status
enum OrderStatus {
  @JsonValue('pending')
  pending,
  @JsonValue('completed')
  completed,
  @JsonValue('draft')
  draft,
  @JsonValue('archived')
  archived,
  @JsonValue('canceled')
  canceled,
  @JsonValue('requires_action')
  requiresAction,
}

/// The order details
@JsonSerializable()
class OrderDTO {
  /// The ID of the order
  final String id;

  /// The version of the order
  final int version;

  /// The order's display ID
  @JsonKey(name: 'display_id')
  final int displayId;

  /// The order's custom display ID
  @JsonKey(name: 'custom_display_id')
  final String? customDisplayId;

  /// The status of the order
  final OrderStatus status;

  /// The ID of the region the order belongs to
  @JsonKey(name: 'region_id')
  final String? regionId;

  /// The ID of the customer on the order
  @JsonKey(name: 'customer_id')
  final String? customerId;

  /// The ID of the sales channel the order belongs to
  @JsonKey(name: 'sales_channel_id')
  final String? salesChannelId;

  /// The email of the order
  final String? email;

  /// The currency of the order
  @JsonKey(name: 'currency_code')
  final String currencyCode;

  /// The associated shipping address
  @JsonKey(name: 'shipping_address')
  final OrderAddressDTO? shippingAddress;

  /// The associated billing address
  @JsonKey(name: 'billing_address')
  final OrderAddressDTO? billingAddress;

  /// The associated order details / line items
  final List<OrderLineItemDTO>? items;

  /// The associated shipping methods
  @JsonKey(name: 'shipping_methods')
  final List<OrderShippingMethodDTO>? shippingMethods;

  /// The summary of the order totals
  final OrderSummaryDTO? summary;

  /// Whether the order is a draft order
  @JsonKey(name: 'is_draft_order')
  final bool? isDraftOrder;

  /// The locale of the order
  final String? locale;

  /// Holds custom data in key-value pairs
  final Metadata? metadata;

  /// When the order was canceled
  @JsonKey(name: 'canceled_at')
  final DateTime? canceledAt;

  /// When the order was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// When the order was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// When the order was deleted
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  // Item totals
  /// The original item total of the order
  @JsonKey(name: 'original_item_total')
  final BigNumberValue originalItemTotal;

  /// The original item subtotal of the order
  @JsonKey(name: 'original_item_subtotal')
  final BigNumberValue originalItemSubtotal;

  /// The original item tax total of the order
  @JsonKey(name: 'original_item_tax_total')
  final BigNumberValue originalItemTaxTotal;

  /// The item total of the order
  @JsonKey(name: 'item_total')
  final BigNumberValue itemTotal;

  /// The item subtotal of the order
  @JsonKey(name: 'item_subtotal')
  final BigNumberValue itemSubtotal;

  /// The item tax total of the order
  @JsonKey(name: 'item_tax_total')
  final BigNumberValue itemTaxTotal;

  /// The item discount total of the order
  @JsonKey(name: 'item_discount_total')
  final BigNumberValue itemDiscountTotal;

  // Order totals
  /// The original total of the order
  @JsonKey(name: 'original_total')
  final BigNumberValue originalTotal;

  /// The original subtotal of the order
  @JsonKey(name: 'original_subtotal')
  final BigNumberValue originalSubtotal;

  /// The original tax total of the order
  @JsonKey(name: 'original_tax_total')
  final BigNumberValue originalTaxTotal;

  /// The total of the order
  final BigNumberValue total;

  /// The subtotal of the order (Excluding taxes)
  final BigNumberValue subtotal;

  /// The tax total of the order
  @JsonKey(name: 'tax_total')
  final BigNumberValue taxTotal;

  /// The discount subtotal of the order
  @JsonKey(name: 'discount_subtotal')
  final BigNumberValue discountSubtotal;

  /// The discount total of the order
  @JsonKey(name: 'discount_total')
  final BigNumberValue discountTotal;

  /// The discount tax total of the order
  @JsonKey(name: 'discount_tax_total')
  final BigNumberValue discountTaxTotal;

  /// The credit line total of the order
  @JsonKey(name: 'credit_line_total')
  final BigNumberValue creditLineTotal;

  /// The gift card total of the order
  @JsonKey(name: 'gift_card_total')
  final BigNumberValue giftCardTotal;

  /// The gift card tax total of the order
  @JsonKey(name: 'gift_card_tax_total')
  final BigNumberValue giftCardTaxTotal;

  // Shipping totals
  /// The shipping total of the order
  @JsonKey(name: 'shipping_total')
  final BigNumberValue shippingTotal;

  /// The shipping subtotal of the order
  @JsonKey(name: 'shipping_subtotal')
  final BigNumberValue shippingSubtotal;

  /// The shipping tax total of the order
  @JsonKey(name: 'shipping_tax_total')
  final BigNumberValue shippingTaxTotal;

  /// The shipping discount total of the order
  @JsonKey(name: 'shipping_discount_total')
  final BigNumberValue shippingDiscountTotal;

  /// The original shipping total of the order
  @JsonKey(name: 'original_shipping_total')
  final BigNumberValue originalShippingTotal;

  /// The original shipping subtotal of the order
  @JsonKey(name: 'original_shipping_subtotal')
  final BigNumberValue originalShippingSubtotal;

  /// The original shipping tax total of the order
  @JsonKey(name: 'original_shipping_tax_total')
  final BigNumberValue originalShippingTaxTotal;

  const OrderDTO({
    required this.id,
    required this.version,
    required this.displayId,
    this.customDisplayId,
    required this.status,
    this.regionId,
    this.customerId,
    this.salesChannelId,
    this.email,
    required this.currencyCode,
    this.shippingAddress,
    this.billingAddress,
    this.items,
    this.shippingMethods,
    this.summary,
    this.isDraftOrder,
    this.locale,
    this.metadata,
    this.canceledAt,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.originalItemTotal,
    required this.originalItemSubtotal,
    required this.originalItemTaxTotal,
    required this.itemTotal,
    required this.itemSubtotal,
    required this.itemTaxTotal,
    required this.itemDiscountTotal,
    required this.originalTotal,
    required this.originalSubtotal,
    required this.originalTaxTotal,
    required this.total,
    required this.subtotal,
    required this.taxTotal,
    required this.discountSubtotal,
    required this.discountTotal,
    required this.discountTaxTotal,
    required this.creditLineTotal,
    required this.giftCardTotal,
    required this.giftCardTaxTotal,
    required this.shippingTotal,
    required this.shippingSubtotal,
    required this.shippingTaxTotal,
    required this.shippingDiscountTotal,
    required this.originalShippingTotal,
    required this.originalShippingSubtotal,
    required this.originalShippingTaxTotal,
  });

  factory OrderDTO.fromJson(Map<String, dynamic> json) =>
      _$OrderDTOFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDTOToJson(this);
}
