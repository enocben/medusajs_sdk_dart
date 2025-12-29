// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageDTO _$ImageDTOFromJson(Map<String, dynamic> json) => ImageDTO(
  id: json['id'] as String,
  url: json['url'] as String,
  metadata: json['metadata'] as Map<String, dynamic>?,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$ImageDTOToJson(ImageDTO instance) => <String, dynamic>{
  'id': instance.id,
  'url': instance.url,
  'metadata': instance.metadata,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};
