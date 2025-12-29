import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';
import '../common/money.dart';

part 'generated/cart_shipping_method.g.dart';

/// The cart shipping method details
@JsonSerializable()
class CartShippingMethodDTO {
  /// The ID of the shipping method
  final String id;

  /// The ID of the associated cart
  @JsonKey(name: 'cart_id')
  final String cartId;

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
  final Metadata metadata;

  /// When the shipping method was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// When the shipping method was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  const CartShippingMethodDTO({
    required this.id,
    required this.cartId,
    required this.name,
    this.description,
    required this.amount,
    required this.isTaxInclusive,
    this.shippingOptionId,
    this.data,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
  });

  factory CartShippingMethodDTO.fromJson(Map<String, dynamic> json) =>
      _$CartShippingMethodDTOFromJson(json);

  Map<String, dynamic> toJson() => _$CartShippingMethodDTOToJson(this);
}
