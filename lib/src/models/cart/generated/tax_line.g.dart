// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../tax_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaxLineDTO _$TaxLineDTOFromJson(Map<String, dynamic> json) => TaxLineDTO(
  id: json['id'] as String,
  description: json['description'] as String?,
  taxRateId: json['tax_rate_id'] as String?,
  code: json['code'] as String,
  rate: (json['rate'] as num).toDouble(),
  providerId: json['provider_id'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$TaxLineDTOToJson(TaxLineDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'tax_rate_id': instance.taxRateId,
      'code': instance.code,
      'rate': instance.rate,
      'provider_id': instance.providerId,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

LineItemTaxLineDTO _$LineItemTaxLineDTOFromJson(Map<String, dynamic> json) =>
    LineItemTaxLineDTO(
      id: json['id'] as String,
      description: json['description'] as String?,
      taxRateId: json['tax_rate_id'] as String?,
      code: json['code'] as String,
      rate: (json['rate'] as num).toDouble(),
      providerId: json['provider_id'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      itemId: json['item_id'] as String,
      total: json['total'] as String,
      subtotal: json['subtotal'] as String,
      rawTotal: json['raw_total'] as Map<String, dynamic>,
      rawSubtotal: json['raw_subtotal'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$LineItemTaxLineDTOToJson(LineItemTaxLineDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'tax_rate_id': instance.taxRateId,
      'code': instance.code,
      'rate': instance.rate,
      'provider_id': instance.providerId,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'item_id': instance.itemId,
      'total': instance.total,
      'subtotal': instance.subtotal,
      'raw_total': instance.rawTotal,
      'raw_subtotal': instance.rawSubtotal,
    };

ShippingMethodTaxLineDTO _$ShippingMethodTaxLineDTOFromJson(
  Map<String, dynamic> json,
) => ShippingMethodTaxLineDTO(
  id: json['id'] as String,
  description: json['description'] as String?,
  taxRateId: json['tax_rate_id'] as String?,
  code: json['code'] as String,
  rate: (json['rate'] as num).toDouble(),
  providerId: json['provider_id'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  shippingMethodId: json['shipping_method_id'] as String,
  total: json['total'] as String,
  subtotal: json['subtotal'] as String,
  rawTotal: json['raw_total'] as Map<String, dynamic>,
  rawSubtotal: json['raw_subtotal'] as Map<String, dynamic>,
);

Map<String, dynamic> _$ShippingMethodTaxLineDTOToJson(
  ShippingMethodTaxLineDTO instance,
) => <String, dynamic>{
  'id': instance.id,
  'description': instance.description,
  'tax_rate_id': instance.taxRateId,
  'code': instance.code,
  'rate': instance.rate,
  'provider_id': instance.providerId,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
  'shipping_method_id': instance.shippingMethodId,
  'total': instance.total,
  'subtotal': instance.subtotal,
  'raw_total': instance.rawTotal,
  'raw_subtotal': instance.rawSubtotal,
};
