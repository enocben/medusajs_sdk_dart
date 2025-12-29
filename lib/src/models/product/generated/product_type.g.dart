// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../product_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductTypeDTO _$ProductTypeDTOFromJson(Map<String, dynamic> json) =>
    ProductTypeDTO(
      id: json['id'] as String,
      value: json['value'] as String,
      metadata: json['metadata'] as Map<String, dynamic>?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$ProductTypeDTOToJson(ProductTypeDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'metadata': instance.metadata,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
    };
