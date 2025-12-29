// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../product_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductCategoryDTO _$ProductCategoryDTOFromJson(Map<String, dynamic> json) =>
    ProductCategoryDTO(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      handle: json['handle'] as String,
      isActive: json['is_active'] as bool,
      isInternal: json['is_internal'] as bool,
      rank: (json['rank'] as num).toInt(),
      metadata: json['metadata'] as Map<String, dynamic>?,
      parentCategoryId: json['parent_category_id'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$ProductCategoryDTOToJson(ProductCategoryDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'handle': instance.handle,
      'is_active': instance.isActive,
      'is_internal': instance.isInternal,
      'rank': instance.rank,
      'metadata': instance.metadata,
      'parent_category_id': instance.parentCategoryId,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
    };
