import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';
import 'return_reason.dart';

part 'generated/return_item.g.dart';

/// The return item details
@JsonSerializable()
class ReturnItemDTO {
  /// The ID of the return item
  final String id;

  /// The ID of the return
  @JsonKey(name: 'return_id')
  final String returnId;

  /// The ID of the order line item
  @JsonKey(name: 'item_id')
  final String itemId;

  /// The ID of the return reason
  @JsonKey(name: 'reason_id')
  final String? reasonId;

  /// The return reason
  final ReturnReasonDTO? reason;

  /// The quantity to return
  final int quantity;

  /// The quantity received
  @JsonKey(name: 'received_quantity')
  final int? receivedQuantity;

  /// The quantity damaged
  @JsonKey(name: 'damaged_quantity')
  final int? damagedQuantity;

  /// Note about the return item
  final String? note;

  /// Holds custom data in key-value pairs
  final Metadata? metadata;

  const ReturnItemDTO({
    required this.id,
    required this.returnId,
    required this.itemId,
    this.reasonId,
    this.reason,
    required this.quantity,
    this.receivedQuantity,
    this.damagedQuantity,
    this.note,
    this.metadata,
  });

  factory ReturnItemDTO.fromJson(Map<String, dynamic> json) =>
      _$ReturnItemDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ReturnItemDTOToJson(this);
}
