// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../stock_location_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StockLocationAddressDTO _$StockLocationAddressDTOFromJson(
  Map<String, dynamic> json,
) => StockLocationAddressDTO(
  id: json['id'] as String,
  address1: json['address_1'] as String,
  address2: json['address_2'] as String?,
  company: json['company'] as String?,
  city: json['city'] as String?,
  countryCode: json['country_code'] as String,
  phone: json['phone'] as String?,
  province: json['province'] as String?,
  postalCode: json['postal_code'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$StockLocationAddressDTOToJson(
  StockLocationAddressDTO instance,
) => <String, dynamic>{
  'id': instance.id,
  'address_1': instance.address1,
  'address_2': instance.address2,
  'company': instance.company,
  'city': instance.city,
  'country_code': instance.countryCode,
  'phone': instance.phone,
  'province': instance.province,
  'postal_code': instance.postalCode,
  'metadata': instance.metadata,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};
