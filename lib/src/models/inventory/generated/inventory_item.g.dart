// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../inventory_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryItemDTO _$InventoryItemDTOFromJson(Map<String, dynamic> json) =>
    InventoryItemDTO(
      id: json['id'] as String,
      sku: json['sku'] as String?,
      originCountry: json['origin_country'] as String?,
      hsCode: json['hs_code'] as String?,
      midCode: json['mid_code'] as String?,
      material: json['material'] as String?,
      weight: (json['weight'] as num?)?.toDouble(),
      length: (json['length'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
      requiresShipping: json['requires_shipping'] as bool,
      title: json['title'] as String?,
      description: json['description'] as String?,
      thumbnail: json['thumbnail'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$InventoryItemDTOToJson(InventoryItemDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sku': instance.sku,
      'origin_country': instance.originCountry,
      'hs_code': instance.hsCode,
      'mid_code': instance.midCode,
      'material': instance.material,
      'weight': instance.weight,
      'length': instance.length,
      'height': instance.height,
      'width': instance.width,
      'requires_shipping': instance.requiresShipping,
      'title': instance.title,
      'description': instance.description,
      'thumbnail': instance.thumbnail,
      'metadata': instance.metadata,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
    };
