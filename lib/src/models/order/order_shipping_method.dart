import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';
import '../common/money.dart';
import 'order_tax_line.dart';
import 'order_adjustment_line.dart';

part 'generated/order_shipping_method.g.dart';

/// The order shipping method details
@JsonSerializable()
class OrderShippingMethodDTO {
  /// The ID of the shipping method
  final String id;

  /// The ID of the associated order
  @JsonKey(name: 'order_id')
  final String orderId;

  /// The name of the shipping method
  final String name;

  /// The description of the shipping method
  final String? description;

  /// The price of the shipping method
  final BigNumberValue amount;

  /// Whether the shipping method price is tax inclusive
  @JsonKey(name: 'is_tax_inclusive')
  final bool isTaxInclusive;

  /// The ID of the shipping option the method was created from
  @JsonKey(name: 'shipping_option_id')
  final String? shippingOptionId;

  /// Additional data needed for fulfillment
  final Map<String, dynamic>? data;

  /// Holds custom data in key-value pairs
  final Metadata? metadata;

  /// The associated tax lines
  @JsonKey(name: 'tax_lines')
  final List<OrderShippingMethodTaxLineDTO>? taxLines;

  /// The associated adjustments
  final List<OrderShippingMethodAdjustmentDTO>? adjustments;

  /// When the shipping method was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// When the shipping method was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// The original total of the order shipping method
  @JsonKey(name: 'original_total')
  final BigNumberValue originalTotal;

  /// The original subtotal of the order shipping method
  @JsonKey(name: 'original_subtotal')
  final BigNumberValue originalSubtotal;

  /// The original tax total of the order shipping method
  @JsonKey(name: 'original_tax_total')
  final BigNumberValue originalTaxTotal;

  /// The total of the order shipping method
  final BigNumberValue total;

  /// The subtotal of the order shipping method
  final BigNumberValue subtotal;

  /// The tax total of the order shipping method
  @JsonKey(name: 'tax_total')
  final BigNumberValue taxTotal;

  /// The discount total of the order shipping method
  @JsonKey(name: 'discount_total')
  final BigNumberValue discountTotal;

  /// The discount tax total of the order shipping method
  @JsonKey(name: 'discount_tax_total')
  final BigNumberValue discountTaxTotal;

  const OrderShippingMethodDTO({
    required this.id,
    required this.orderId,
    required this.name,
    this.description,
    required this.amount,
    required this.isTaxInclusive,
    this.shippingOptionId,
    this.data,
    this.metadata,
    this.taxLines,
    this.adjustments,
    required this.createdAt,
    required this.updatedAt,
    required this.originalTotal,
    required this.originalSubtotal,
    required this.originalTaxTotal,
    required this.total,
    required this.subtotal,
    required this.taxTotal,
    required this.discountTotal,
    required this.discountTaxTotal,
  });

  factory OrderShippingMethodDTO.fromJson(Map<String, dynamic> json) =>
      _$OrderShippingMethodDTOFromJson(json);

  Map<String, dynamic> toJson() => _$OrderShippingMethodDTOToJson(this);
}
