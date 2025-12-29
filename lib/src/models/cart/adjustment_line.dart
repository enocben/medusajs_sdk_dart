import 'package:json_annotation/json_annotation.dart';
import '../common/money.dart';

part 'generated/adjustment_line.g.dart';

/// The adjustment line details
@JsonSerializable()
class AdjustmentLineDTO {
  /// The ID of the adjustment line
  final String id;

  /// The code of the promotion that lead to this adjustment
  final String? code;

  /// The amount to adjust the original amount with
  final BigNumberValue amount;

  /// Whether the adjustment is tax inclusive
  @JsonKey(name: 'is_tax_inclusive')
  final bool? isTaxInclusive;

  /// The raw amount to adjust the original amount with
  @JsonKey(name: 'raw_amount')
  final BigNumberRawValue rawAmount;

  /// The ID of the associated cart
  @JsonKey(name: 'cart_id')
  final String cartId;

  /// The description of the adjustment line
  final String? description;

  /// The ID of the associated promotion
  @JsonKey(name: 'promotion_id')
  final String? promotionId;

  /// The ID of the associated provider
  @JsonKey(name: 'provider_id')
  final String? providerId;

  /// When the adjustment line was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// When the adjustment line was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  const AdjustmentLineDTO({
    required this.id,
    this.code,
    required this.amount,
    this.isTaxInclusive,
    required this.rawAmount,
    required this.cartId,
    this.description,
    this.promotionId,
    this.providerId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory AdjustmentLineDTO.fromJson(Map<String, dynamic> json) =>
      _$AdjustmentLineDTOFromJson(json);

  Map<String, dynamic> toJson() => _$AdjustmentLineDTOToJson(this);
}

/// The line item adjustment details
@JsonSerializable()
class LineItemAdjustmentDTO extends AdjustmentLineDTO {
  /// The ID of the associated line item
  @JsonKey(name: 'item_id')
  final String itemId;

  const LineItemAdjustmentDTO({
    required super.id,
    super.code,
    required super.amount,
    super.isTaxInclusive,
    required super.rawAmount,
    required super.cartId,
    super.description,
    super.promotionId,
    super.providerId,
    required super.createdAt,
    required super.updatedAt,
    required this.itemId,
  });

  factory LineItemAdjustmentDTO.fromJson(Map<String, dynamic> json) =>
      _$LineItemAdjustmentDTOFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LineItemAdjustmentDTOToJson(this);
}

/// The shipping method adjustment details
@JsonSerializable()
class ShippingMethodAdjustmentDTO extends AdjustmentLineDTO {
  /// The ID of the associated shipping method
  @JsonKey(name: 'shipping_method_id')
  final String shippingMethodId;

  const ShippingMethodAdjustmentDTO({
    required super.id,
    super.code,
    required super.amount,
    super.isTaxInclusive,
    required super.rawAmount,
    required super.cartId,
    super.description,
    super.promotionId,
    super.providerId,
    required super.createdAt,
    required super.updatedAt,
    required this.shippingMethodId,
  });

  factory ShippingMethodAdjustmentDTO.fromJson(Map<String, dynamic> json) =>
      _$ShippingMethodAdjustmentDTOFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ShippingMethodAdjustmentDTOToJson(this);
}
