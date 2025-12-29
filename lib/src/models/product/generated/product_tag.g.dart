// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../product_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductTagDTO _$ProductTagDTOFromJson(Map<String, dynamic> json) =>
    ProductTagDTO(
      id: json['id'] as String,
      value: json['value'] as String,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ProductTagDTOToJson(ProductTagDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'metadata': instance.metadata,
    };
