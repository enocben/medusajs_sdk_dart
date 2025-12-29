import 'package:json_annotation/json_annotation.dart';

part 'generated/fulfillment_item.g.dart';

/// The fulfillment item details
@JsonSerializable()
class FulfillmentItemDTO {
  /// The ID of the fulfillment item
  final String id;

  /// The ID of the fulfillment
  @JsonKey(name: 'fulfillment_id')
  final String fulfillmentId;

  /// The ID of the line item
  @JsonKey(name: 'line_item_id')
  final String lineItemId;

  /// The ID of the inventory item
  @JsonKey(name: 'inventory_item_id')
  final String inventoryItemId;

  /// The quantity of the fulfillment item
  final int quantity;

  const FulfillmentItemDTO({
    required this.id,
    required this.fulfillmentId,
    required this.lineItemId,
    required this.inventoryItemId,
    required this.quantity,
  });

  factory FulfillmentItemDTO.fromJson(Map<String, dynamic> json) =>
      _$FulfillmentItemDTOFromJson(json);

  Map<String, dynamic> toJson() => _$FulfillmentItemDTOToJson(this);
}
