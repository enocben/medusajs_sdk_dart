// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../inventory_level.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryLevelDTO _$InventoryLevelDTOFromJson(Map<String, dynamic> json) =>
    InventoryLevelDTO(
      id: json['id'] as String,
      inventoryItemId: json['inventory_item_id'] as String,
      locationId: json['location_id'] as String,
      stockedQuantity: (json['stocked_quantity'] as num).toInt(),
      reservedQuantity: (json['reserved_quantity'] as num).toInt(),
      incomingQuantity: (json['incoming_quantity'] as num).toInt(),
      metadata: json['metadata'] as Map<String, dynamic>?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$InventoryLevelDTOToJson(InventoryLevelDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'inventory_item_id': instance.inventoryItemId,
      'location_id': instance.locationId,
      'stocked_quantity': instance.stockedQuantity,
      'reserved_quantity': instance.reservedQuantity,
      'incoming_quantity': instance.incomingQuantity,
      'metadata': instance.metadata,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
    };
