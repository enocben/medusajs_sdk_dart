import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';

part 'generated/store.g.dart';

/// The store details
@JsonSerializable()
class StoreDTO {
  /// The ID of the store
  final String id;

  /// The name of the store
  final String name;

  /// The supported currencies of the store
  @JsonKey(name: 'supported_currencies')
  final List<String>? supportedCurrencies;

  /// The default currency code of the store
  @JsonKey(name: 'default_currency_code')
  final String? defaultCurrencyCode;

  /// The default sales channel ID of the store
  @JsonKey(name: 'default_sales_channel_id')
  final String? defaultSalesChannelId;

  /// The default region ID of the store
  @JsonKey(name: 'default_region_id')
  final String? defaultRegionId;

  /// The default location ID of the store
  @JsonKey(name: 'default_location_id')
  final String? defaultLocationId;

  /// Holds custom data in key-value pairs
  final Metadata? metadata;

  /// When the store was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// When the store was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  const StoreDTO({
    required this.id,
    required this.name,
    this.supportedCurrencies,
    this.defaultCurrencyCode,
    this.defaultSalesChannelId,
    this.defaultRegionId,
    this.defaultLocationId,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
  });

  factory StoreDTO.fromJson(Map<String, dynamic> json) =>
      _$StoreDTOFromJson(json);

  Map<String, dynamic> toJson() => _$StoreDTOToJson(this);
}
