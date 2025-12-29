// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../order_tax_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderTaxLineDTO _$OrderTaxLineDTOFromJson(Map<String, dynamic> json) =>
    OrderTaxLineDTO(
      id: json['id'] as String,
      description: json['description'] as String?,
      taxRateId: json['tax_rate_id'] as String?,
      code: json['code'] as String,
      rate: (json['rate'] as num).toDouble(),
      providerId: json['provider_id'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$OrderTaxLineDTOToJson(OrderTaxLineDTO instance) =>
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

OrderLineItemTaxLineDTO _$OrderLineItemTaxLineDTOFromJson(
  Map<String, dynamic> json,
) => OrderLineItemTaxLineDTO(
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
);

Map<String, dynamic> _$OrderLineItemTaxLineDTOToJson(
  OrderLineItemTaxLineDTO instance,
) => <String, dynamic>{
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
};

OrderShippingMethodTaxLineDTO _$OrderShippingMethodTaxLineDTOFromJson(
  Map<String, dynamic> json,
) => OrderShippingMethodTaxLineDTO(
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
);

Map<String, dynamic> _$OrderShippingMethodTaxLineDTOToJson(
  OrderShippingMethodTaxLineDTO instance,
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
};
