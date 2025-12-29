import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';
import '../common/money.dart';

part 'generated/shipping_option.g.dart';

/// Shipping option data
@JsonSerializable()
class ShippingOptionDTO {
  /// The ID of the shipping option
  final String id;

  /// The name of the shipping option
  final String name;

  /// The price of the shipping option
  final BigNumberValue price;

  /// The ID of the provider
  @JsonKey(name: 'provider_id')
  final String providerId;

  /// The ID of the region
  @JsonKey(name: 'region_id')
  final String regionId;

  /// Holds custom data in key-value pairs
  final Metadata metadata;

  /// When the shipping option was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// When the shipping option was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  const ShippingOptionDTO({
    required this.id,
    required this.name,
    required this.price,
    required this.providerId,
    required this.regionId,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ShippingOptionDTO.fromJson(Map<String, dynamic> json) =>
      _$ShippingOptionDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ShippingOptionDTOToJson(this);
}
