// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../product_variant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductVariantDTO _$ProductVariantDTOFromJson(Map<String, dynamic> json) =>
    ProductVariantDTO(
      id: json['id'] as String,
      title: json['title'] as String,
      sku: json['sku'] as String?,
      barcode: json['barcode'] as String?,
      ean: json['ean'] as String?,
      upc: json['upc'] as String?,
      allowBackorder: json['allow_backorder'] as bool,
      manageInventory: json['manage_inventory'] as bool,
      thumbnail: json['thumbnail'] as String?,
      requiresShipping: json['requires_shipping'] as bool,
      hsCode: json['hs_code'] as String?,
      originCountry: json['origin_country'] as String?,
      midCode: json['mid_code'] as String?,
      material: json['material'] as String?,
      weight: (json['weight'] as num?)?.toDouble(),
      length: (json['length'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
      metadata: json['metadata'] as Map<String, dynamic>?,
      productId: json['product_id'] as String?,
      variantRank: (json['variant_rank'] as num?)?.toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$ProductVariantDTOToJson(ProductVariantDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'sku': instance.sku,
      'barcode': instance.barcode,
      'ean': instance.ean,
      'upc': instance.upc,
      'allow_backorder': instance.allowBackorder,
      'manage_inventory': instance.manageInventory,
      'thumbnail': instance.thumbnail,
      'requires_shipping': instance.requiresShipping,
      'hs_code': instance.hsCode,
      'origin_country': instance.originCountry,
      'mid_code': instance.midCode,
      'material': instance.material,
      'weight': instance.weight,
      'length': instance.length,
      'height': instance.height,
      'width': instance.width,
      'metadata': instance.metadata,
      'product_id': instance.productId,
      'variant_rank': instance.variantRank,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
    };
