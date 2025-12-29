import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';
import 'fulfillment_item.dart';

part 'generated/fulfillment.g.dart';

/// The fulfillment details
@JsonSerializable()
class FulfillmentDTO {
  /// The ID of the fulfillment
  final String id;

  /// The ID of the location the fulfillment is from
  @JsonKey(name: 'location_id')
  final String locationId;

  /// The date the fulfillment was packed
  @JsonKey(name: 'packed_at')
  final DateTime? packedAt;

  /// The date the fulfillment was shipped
  @JsonKey(name: 'shipped_at')
  final DateTime? shippedAt;

  /// The date the fulfillment was delivered
  @JsonKey(name: 'delivered_at')
  final DateTime? deliveredAt;

  /// The date the fulfillment was canceled
  @JsonKey(name: 'canceled_at')
  final DateTime? canceledAt;

  /// Additional data for the fulfillment
  final Map<String, dynamic>? data;

  /// The ID of the provider
  @JsonKey(name: 'provider_id')
  final String providerId;

  /// The ID of the shipping option
  @JsonKey(name: 'shipping_option_id')
  final String? shippingOptionId;

  /// Holds custom data in key-value pairs
  final Metadata? metadata;

  /// The tracking links for the fulfillment
  @JsonKey(name: 'tracking_links')
  final List<Map<String, dynamic>>? trackingLinks;

  /// The items in the fulfillment
  final List<FulfillmentItemDTO>? items;

  /// When the fulfillment was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// When the fulfillment was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// When the fulfillment was deleted
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  const FulfillmentDTO({
    required this.id,
    required this.locationId,
    this.packedAt,
    this.shippedAt,
    this.deliveredAt,
    this.canceledAt,
    this.data,
    required this.providerId,
    this.shippingOptionId,
    this.metadata,
    this.trackingLinks,
    this.items,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });

  factory FulfillmentDTO.fromJson(Map<String, dynamic> json) =>
      _$FulfillmentDTOFromJson(json);

  Map<String, dynamic> toJson() => _$FulfillmentDTOToJson(this);
}
