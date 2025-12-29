// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../region.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegionDTO _$RegionDTOFromJson(Map<String, dynamic> json) => RegionDTO(
  id: json['id'] as String,
  name: json['name'] as String,
  currencyCode: json['currency_code'] as String,
  automaticTaxes: json['automatic_taxes'] as bool,
  metadata: json['metadata'] as Map<String, dynamic>?,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$RegionDTOToJson(RegionDTO instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'currency_code': instance.currencyCode,
  'automatic_taxes': instance.automaticTaxes,
  'metadata': instance.metadata,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};
