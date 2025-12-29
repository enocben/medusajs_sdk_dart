import 'package:json_annotation/json_annotation.dart';
import '../common/money.dart';

part 'generated/order_adjustment_line.g.dart';

/// The adjustment line details
@JsonSerializable()
class OrderAdjustmentLineDTO {
  /// The ID of the adjustment line
  final String id;

  /// The code of the adjustment line
  final String? code;

  /// The amount of the adjustment line
  final BigNumberValue amount;

  /// The ID of the associated order
  @JsonKey(name: 'order_id')
  final String orderId;

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

  const OrderAdjustmentLineDTO({
    required this.id,
    this.code,
    required this.amount,
    required this.orderId,
    this.description,
    this.promotionId,
    this.providerId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory OrderAdjustmentLineDTO.fromJson(Map<String, dynamic> json) =>
      _$OrderAdjustmentLineDTOFromJson(json);

  Map<String, dynamic> toJson() => _$OrderAdjustmentLineDTOToJson(this);
}

/// The line item adjustment details
@JsonSerializable()
class OrderLineItemAdjustmentDTO extends OrderAdjustmentLineDTO {
  /// The ID of the associated line item
  @JsonKey(name: 'item_id')
  final String itemId;

  const OrderLineItemAdjustmentDTO({
    required super.id,
    super.code,
    required super.amount,
    required super.orderId,
    super.description,
    super.promotionId,
    super.providerId,
    required super.createdAt,
    required super.updatedAt,
    required this.itemId,
  });

  factory OrderLineItemAdjustmentDTO.fromJson(Map<String, dynamic> json) =>
      _$OrderLineItemAdjustmentDTOFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$OrderLineItemAdjustmentDTOToJson(this);
}

/// The shipping method adjustment details
@JsonSerializable()
class OrderShippingMethodAdjustmentDTO extends OrderAdjustmentLineDTO {
  /// The ID of the associated shipping method
  @JsonKey(name: 'shipping_method_id')
  final String shippingMethodId;

  const OrderShippingMethodAdjustmentDTO({
    required super.id,
    super.code,
    required super.amount,
    required super.orderId,
    super.description,
    super.promotionId,
    super.providerId,
    required super.createdAt,
    required super.updatedAt,
    required this.shippingMethodId,
  });

  factory OrderShippingMethodAdjustmentDTO.fromJson(
    Map<String, dynamic> json,
  ) => _$OrderShippingMethodAdjustmentDTOFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$OrderShippingMethodAdjustmentDTOToJson(this);
}
