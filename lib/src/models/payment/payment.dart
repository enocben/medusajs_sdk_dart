import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';
import '../common/money.dart';

part 'generated/payment.g.dart';

/// Payment data
@JsonSerializable()
class PaymentDTO {
  /// The ID of the payment
  final String id;

  /// The amount of the payment
  final BigNumberValue amount;

  /// The currency code of the payment
  @JsonKey(name: 'currency_code')
  final String currencyCode;

  /// The ID of the provider
  @JsonKey(name: 'provider_id')
  final String providerId;

  /// The ID of the cart
  @JsonKey(name: 'cart_id')
  final String? cartId;

  /// The ID of the order
  @JsonKey(name: 'order_id')
  final String? orderId;

  /// Holds custom data in key-value pairs
  final Metadata metadata;

  /// When the payment was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// When the payment was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  const PaymentDTO({
    required this.id,
    required this.amount,
    required this.currencyCode,
    required this.providerId,
    this.cartId,
    this.orderId,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
  });

  factory PaymentDTO.fromJson(Map<String, dynamic> json) =>
      _$PaymentDTOFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentDTOToJson(this);
}
