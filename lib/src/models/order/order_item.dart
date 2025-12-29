import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';

part 'generated/order_item.g.dart';

/// The order item details
@JsonSerializable()
class OrderItemDTO {
  /// The ID of the order item
  final String id;

  /// The ID of the associated item
  @JsonKey(name: 'item_id')
  final String itemId;

  /// The quantity of the order line item
  final int quantity;

  /// The fulfilled quantity of the order line item
  @JsonKey(name: 'fulfilled_quantity')
  final int fulfilledQuantity;

  /// The delivered quantity of the order line item
  @JsonKey(name: 'delivered_quantity')
  final int deliveredQuantity;

  /// The shipped quantity of the order line item
  @JsonKey(name: 'shipped_quantity')
  final int shippedQuantity;

  /// The quantity of return requested for the order line item
  @JsonKey(name: 'return_requested_quantity')
  final int returnRequestedQuantity;

  /// The quantity of return received for the order line item
  @JsonKey(name: 'return_received_quantity')
  final int returnReceivedQuantity;

  /// The quantity of return dismissed for the order line item
  @JsonKey(name: 'return_dismissed_quantity')
  final int returnDismissedQuantity;

  /// The quantity of written off for the order line item
  @JsonKey(name: 'written_off_quantity')
  final int writtenOffQuantity;

  /// The metadata of the order detail
  final Metadata? metadata;

  /// The date when the order line item was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// The date when the order line item was last updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  const OrderItemDTO({
    required this.id,
    required this.itemId,
    required this.quantity,
    required this.fulfilledQuantity,
    required this.deliveredQuantity,
    required this.shippedQuantity,
    required this.returnRequestedQuantity,
    required this.returnReceivedQuantity,
    required this.returnDismissedQuantity,
    required this.writtenOffQuantity,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
  });

  factory OrderItemDTO.fromJson(Map<String, dynamic> json) =>
      _$OrderItemDTOFromJson(json);

  Map<String, dynamic> toJson() => _$OrderItemDTOToJson(this);
}
