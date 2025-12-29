// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../shipping_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShippingOptionDTO _$ShippingOptionDTOFromJson(Map<String, dynamic> json) =>
    ShippingOptionDTO(
      id: json['id'] as String,
      name: json['name'] as String,
      price: json['price'] as String,
      providerId: json['provider_id'] as String,
      regionId: json['region_id'] as String,
      metadata: json['metadata'] as Map<String, dynamic>?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ShippingOptionDTOToJson(ShippingOptionDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'provider_id': instance.providerId,
      'region_id': instance.regionId,
      'metadata': instance.metadata,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
