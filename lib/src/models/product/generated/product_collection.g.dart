// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../product_collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductCollectionDTO _$ProductCollectionDTOFromJson(
  Map<String, dynamic> json,
) => ProductCollectionDTO(
  id: json['id'] as String,
  title: json['title'] as String,
  handle: json['handle'] as String,
  metadata: json['metadata'] as Map<String, dynamic>?,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  deletedAt: json['deleted_at'] == null
      ? null
      : DateTime.parse(json['deleted_at'] as String),
);

Map<String, dynamic> _$ProductCollectionDTOToJson(
  ProductCollectionDTO instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'handle': instance.handle,
  'metadata': instance.metadata,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
  'deleted_at': instance.deletedAt?.toIso8601String(),
};
