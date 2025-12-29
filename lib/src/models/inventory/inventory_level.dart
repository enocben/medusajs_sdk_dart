import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';

part 'generated/inventory_level.g.dart';

/// The inventory level details
@JsonSerializable()
class InventoryLevelDTO {
  /// The ID of the inventory level
  final String id;

  /// The ID of the inventory item
  @JsonKey(name: 'inventory_item_id')
  final String inventoryItemId;

  /// The ID of the location
  @JsonKey(name: 'location_id')
  final String locationId;

  /// The stocked quantity
  @JsonKey(name: 'stocked_quantity')
  final int stockedQuantity;

  /// The reserved quantity
  @JsonKey(name: 'reserved_quantity')
  final int reservedQuantity;

  /// The incoming quantity
  @JsonKey(name: 'incoming_quantity')
  final int incomingQuantity;

  /// Holds custom data in key-value pairs
  final Metadata? metadata;

  /// When the inventory level was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// When the inventory level was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// When the inventory level was deleted
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  const InventoryLevelDTO({
    required this.id,
    required this.inventoryItemId,
    required this.locationId,
    required this.stockedQuantity,
    required this.reservedQuantity,
    required this.incomingQuantity,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });

  factory InventoryLevelDTO.fromJson(Map<String, dynamic> json) =>
      _$InventoryLevelDTOFromJson(json);

  Map<String, dynamic> toJson() => _$InventoryLevelDTOToJson(this);
}
