import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';

part 'generated/inventory_item.g.dart';

/// The inventory item details
@JsonSerializable()
class InventoryItemDTO {
  /// The ID of the inventory item
  final String id;

  /// The SKU of the inventory item
  final String? sku;

  /// The origin country of the inventory item
  @JsonKey(name: 'origin_country')
  final String? originCountry;

  /// The HS code of the inventory item
  @JsonKey(name: 'hs_code')
  final String? hsCode;

  /// The MID code of the inventory item
  @JsonKey(name: 'mid_code')
  final String? midCode;

  /// The material of the inventory item
  final String? material;

  /// The weight of the inventory item
  final double? weight;

  /// The length of the inventory item
  final double? length;

  /// The height of the inventory item
  final double? height;

  /// The width of the inventory item
  final double? width;

  /// Whether the inventory item requires shipping
  @JsonKey(name: 'requires_shipping')
  final bool requiresShipping;

  /// The title of the inventory item
  final String? title;

  /// The description of the inventory item
  final String? description;

  /// The thumbnail of the inventory item
  final String? thumbnail;

  /// Holds custom data in key-value pairs
  final Metadata? metadata;

  /// When the inventory item was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// When the inventory item was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// When the inventory item was deleted
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  const InventoryItemDTO({
    required this.id,
    this.sku,
    this.originCountry,
    this.hsCode,
    this.midCode,
    this.material,
    this.weight,
    this.length,
    this.height,
    this.width,
    required this.requiresShipping,
    this.title,
    this.description,
    this.thumbnail,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });

  factory InventoryItemDTO.fromJson(Map<String, dynamic> json) =>
      _$InventoryItemDTOFromJson(json);

  Map<String, dynamic> toJson() => _$InventoryItemDTOToJson(this);
}
