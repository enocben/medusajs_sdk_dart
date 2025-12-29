import 'package:json_annotation/json_annotation.dart';
import '../common/money.dart';

part 'generated/order_tax_line.g.dart';

/// The tax line details
@JsonSerializable()
class OrderTaxLineDTO {
  /// The ID of the tax line
  final String id;

  /// The description of the tax line
  final String? description;

  /// The ID of the associated tax rate
  @JsonKey(name: 'tax_rate_id')
  final String? taxRateId;

  /// The code of the tax line
  final String code;

  /// The rate of the tax line
  final double rate;

  /// The ID of the associated provider
  @JsonKey(name: 'provider_id')
  final String? providerId;

  /// When the tax line was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// When the tax line was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  const OrderTaxLineDTO({
    required this.id,
    this.description,
    this.taxRateId,
    required this.code,
    required this.rate,
    this.providerId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory OrderTaxLineDTO.fromJson(Map<String, dynamic> json) =>
      _$OrderTaxLineDTOFromJson(json);

  Map<String, dynamic> toJson() => _$OrderTaxLineDTOToJson(this);
}

/// The line item tax line details
@JsonSerializable()
class OrderLineItemTaxLineDTO extends OrderTaxLineDTO {
  /// The ID of the associated line item
  @JsonKey(name: 'item_id')
  final String itemId;

  /// The total tax relative to the item
  final BigNumberValue total;

  /// The subtotal tax relative to the item
  final BigNumberValue subtotal;

  const OrderLineItemTaxLineDTO({
    required super.id,
    super.description,
    super.taxRateId,
    required super.code,
    required super.rate,
    super.providerId,
    required super.createdAt,
    required super.updatedAt,
    required this.itemId,
    required this.total,
    required this.subtotal,
  });

  factory OrderLineItemTaxLineDTO.fromJson(Map<String, dynamic> json) =>
      _$OrderLineItemTaxLineDTOFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$OrderLineItemTaxLineDTOToJson(this);
}

/// The shipping method tax line details
@JsonSerializable()
class OrderShippingMethodTaxLineDTO extends OrderTaxLineDTO {
  /// The ID of the associated shipping method
  @JsonKey(name: 'shipping_method_id')
  final String shippingMethodId;

  /// The total tax relative to the shipping method
  final BigNumberValue total;

  /// The subtotal tax relative to the shipping method
  final BigNumberValue subtotal;

  const OrderShippingMethodTaxLineDTO({
    required super.id,
    super.description,
    super.taxRateId,
    required super.code,
    required super.rate,
    super.providerId,
    required super.createdAt,
    required super.updatedAt,
    required this.shippingMethodId,
    required this.total,
    required this.subtotal,
  });

  factory OrderShippingMethodTaxLineDTO.fromJson(Map<String, dynamic> json) =>
      _$OrderShippingMethodTaxLineDTOFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$OrderShippingMethodTaxLineDTOToJson(this);
}
