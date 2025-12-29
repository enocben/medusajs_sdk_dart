// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../locale.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocaleDTO _$LocaleDTOFromJson(Map<String, dynamic> json) => LocaleDTO(
  id: json['id'] as String,
  code: json['code'] as String,
  name: json['name'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  deletedAt: json['deleted_at'] == null
      ? null
      : DateTime.parse(json['deleted_at'] as String),
);

Map<String, dynamic> _$LocaleDTOToJson(LocaleDTO instance) => <String, dynamic>{
  'id': instance.id,
  'code': instance.code,
  'name': instance.name,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
  'deleted_at': instance.deletedAt?.toIso8601String(),
};
