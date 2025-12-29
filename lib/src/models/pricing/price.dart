import 'package:json_annotation/json_annotation.dart';

part 'generated/price.g.dart';

/// A price's data
@JsonSerializable()
class PriceDTO {
  /// The ID of a price
  final String id;

  /// The title of the price
  final String? title;

  /// The currency code of this price
  @JsonKey(name: 'currency_code')
  final String? currencyCode;

  /// The price amount (represented as string for BigNumber compatibility)
  final String? amount;

  /// The minimum quantity required to be purchased for this price to be applied
  @JsonKey(name: 'min_quantity')
  final String? minQuantity;

  /// The maximum quantity required to be purchased for this price to be applied
  @JsonKey(name: 'max_quantity')
  final String? maxQuantity;

  /// The ID of the associated price set
  @JsonKey(name: 'price_set_id')
  final String? priceSetId;

  /// When the price was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// When the price was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// When the price was deleted
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  const PriceDTO({
    required this.id,
    this.title,
    this.currencyCode,
    this.amount,
    this.minQuantity,
    this.maxQuantity,
    this.priceSetId,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });

  factory PriceDTO.fromJson(Map<String, dynamic> json) =>
      _$PriceDTOFromJson(json);

  Map<String, dynamic> toJson() => _$PriceDTOToJson(this);
}
