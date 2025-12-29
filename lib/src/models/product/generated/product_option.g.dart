// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../product_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductOptionDTO _$ProductOptionDTOFromJson(Map<String, dynamic> json) =>
    ProductOptionDTO(
      id: json['id'] as String,
      title: json['title'] as String,
      productId: json['product_id'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$ProductOptionDTOToJson(ProductOptionDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'product_id': instance.productId,
      'metadata': instance.metadata,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
    };

ProductOptionValueDTO _$ProductOptionValueDTOFromJson(
  Map<String, dynamic> json,
) => ProductOptionValueDTO(
  id: json['id'] as String,
  value: json['value'] as String,
  optionId: json['option_id'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  deletedAt: json['deleted_at'] == null
      ? null
      : DateTime.parse(json['deleted_at'] as String),
);

Map<String, dynamic> _$ProductOptionValueDTOToJson(
  ProductOptionValueDTO instance,
) => <String, dynamic>{
  'id': instance.id,
  'value': instance.value,
  'option_id': instance.optionId,
  'metadata': instance.metadata,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
  'deleted_at': instance.deletedAt?.toIso8601String(),
};
