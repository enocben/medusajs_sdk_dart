// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../tax_region.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaxRegionDTO _$TaxRegionDTOFromJson(Map<String, dynamic> json) => TaxRegionDTO(
  id: json['id'] as String,
  countryCode: json['country_code'] as String,
  provinceCode: json['province_code'] as String?,
  parentId: json['parent_id'] as String?,
  providerId: json['provider_id'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  createdBy: json['created_by'] as String?,
  deletedAt: json['deleted_at'] == null
      ? null
      : DateTime.parse(json['deleted_at'] as String),
);

Map<String, dynamic> _$TaxRegionDTOToJson(TaxRegionDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country_code': instance.countryCode,
      'province_code': instance.provinceCode,
      'parent_id': instance.parentId,
      'provider_id': instance.providerId,
      'metadata': instance.metadata,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'created_by': instance.createdBy,
      'deleted_at': instance.deletedAt?.toIso8601String(),
    };
