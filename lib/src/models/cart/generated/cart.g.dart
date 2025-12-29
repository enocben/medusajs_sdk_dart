// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartDTO _$CartDTOFromJson(Map<String, dynamic> json) => CartDTO(
  id: json['id'] as String,
  regionId: json['region_id'] as String?,
  customerId: json['customer_id'] as String?,
  salesChannelId: json['sales_channel_id'] as String?,
  email: json['email'] as String?,
  currencyCode: json['currency_code'] as String,
  locale: json['locale'] as String?,
  shippingAddress: json['shipping_address'] == null
      ? null
      : CartAddressDTO.fromJson(
          json['shipping_address'] as Map<String, dynamic>,
        ),
  billingAddress: json['billing_address'] == null
      ? null
      : CartAddressDTO.fromJson(
          json['billing_address'] as Map<String, dynamic>,
        ),
  items: (json['items'] as List<dynamic>?)
      ?.map((e) => CartLineItemDTO.fromJson(e as Map<String, dynamic>))
      .toList(),
  shippingMethods: (json['shipping_methods'] as List<dynamic>?)
      ?.map((e) => CartShippingMethodDTO.fromJson(e as Map<String, dynamic>))
      .toList(),
  metadata: json['metadata'] as Map<String, dynamic>?,
  completedAt: json['completed_at'] == null
      ? null
      : DateTime.parse(json['completed_at'] as String),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  total: json['total'] as String?,
  subtotal: json['subtotal'] as String?,
  taxTotal: json['tax_total'] as String?,
  discountTotal: json['discount_total'] as String?,
  shippingTotal: json['shipping_total'] as String?,
);

Map<String, dynamic> _$CartDTOToJson(CartDTO instance) => <String, dynamic>{
  'id': instance.id,
  'region_id': instance.regionId,
  'customer_id': instance.customerId,
  'sales_channel_id': instance.salesChannelId,
  'email': instance.email,
  'currency_code': instance.currencyCode,
  'locale': instance.locale,
  'shipping_address': instance.shippingAddress,
  'billing_address': instance.billingAddress,
  'items': instance.items,
  'shipping_methods': instance.shippingMethods,
  'metadata': instance.metadata,
  'completed_at': instance.completedAt?.toIso8601String(),
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'total': instance.total,
  'subtotal': instance.subtotal,
  'tax_total': instance.taxTotal,
  'discount_total': instance.discountTotal,
  'shipping_total': instance.shippingTotal,
};
