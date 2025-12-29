import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';
import '../common/money.dart';
import 'cart_address.dart';
import 'cart_line_item.dart';
import 'cart_shipping_method.dart';

part 'generated/cart.g.dart';

/// The cart details
@JsonSerializable()
class CartDTO {
  /// The ID of the cart
  final String id;

  /// The ID of the region the cart belongs to
  @JsonKey(name: 'region_id')
  final String? regionId;

  /// The ID of the associated customer
  @JsonKey(name: 'customer_id')
  final String? customerId;

  /// The ID of the sales channel the cart belongs to
  @JsonKey(name: 'sales_channel_id')
  final String? salesChannelId;

  /// The email of the customer that owns the cart
  final String? email;

  /// The currency of the cart
  @JsonKey(name: 'currency_code')
  final String currencyCode;

  /// The locale code of the cart
  final String? locale;

  /// The associated shipping address
  @JsonKey(name: 'shipping_address')
  final CartAddressDTO? shippingAddress;

  /// The associated billing address
  @JsonKey(name: 'billing_address')
  final CartAddressDTO? billingAddress;

  /// The associated line items
  final List<CartLineItemDTO>? items;

  /// The associated shipping methods
  @JsonKey(name: 'shipping_methods')
  final List<CartShippingMethodDTO>? shippingMethods;

  /// Holds custom data in key-value pairs
  final Metadata metadata;

  /// When the cart was completed
  @JsonKey(name: 'completed_at')
  final DateTime? completedAt;

  /// When the cart was created
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  /// When the cart was updated
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  /// The total of the cart
  final BigNumberValue? total;

  /// The subtotal of the cart (Excluding taxes)
  final BigNumberValue? subtotal;

  /// The tax total of the cart
  @JsonKey(name: 'tax_total')
  final BigNumberValue? taxTotal;

  /// The discount total of the cart
  @JsonKey(name: 'discount_total')
  final BigNumberValue? discountTotal;

  /// The shipping total of the cart
  @JsonKey(name: 'shipping_total')
  final BigNumberValue? shippingTotal;

  const CartDTO({
    required this.id,
    this.regionId,
    this.customerId,
    this.salesChannelId,
    this.email,
    required this.currencyCode,
    this.locale,
    this.shippingAddress,
    this.billingAddress,
    this.items,
    this.shippingMethods,
    this.metadata,
    this.completedAt,
    this.createdAt,
    this.updatedAt,
    this.total,
    this.subtotal,
    this.taxTotal,
    this.discountTotal,
    this.shippingTotal,
  });

  factory CartDTO.fromJson(Map<String, dynamic> json) =>
      _$CartDTOFromJson(json);

  Map<String, dynamic> toJson() => _$CartDTOToJson(this);
}
