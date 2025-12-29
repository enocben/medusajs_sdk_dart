// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../product_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductImageDTO _$ProductImageDTOFromJson(Map<String, dynamic> json) =>
    ProductImageDTO(
      id: json['id'] as String,
      url: json['url'] as String,
      rank: (json['rank'] as num).toInt(),
      metadata: json['metadata'] as Map<String, dynamic>?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$ProductImageDTOToJson(ProductImageDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'rank': instance.rank,
      'metadata': instance.metadata,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
    };
