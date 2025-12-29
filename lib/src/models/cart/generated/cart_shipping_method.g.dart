// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../cart_shipping_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartShippingMethodDTO _$CartShippingMethodDTOFromJson(
  Map<String, dynamic> json,
) => CartShippingMethodDTO(
  id: json['id'] as String,
  cartId: json['cart_id'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
  amount: json['amount'] as String,
  isTaxInclusive: json['is_tax_inclusive'] as bool,
  shippingOptionId: json['shipping_option_id'] as String?,
  data: json['data'] as Map<String, dynamic>?,
  metadata: json['metadata'] as Map<String, dynamic>?,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$CartShippingMethodDTOToJson(
  CartShippingMethodDTO instance,
) => <String, dynamic>{
  'id': instance.id,
  'cart_id': instance.cartId,
  'name': instance.name,
  'description': instance.description,
  'amount': instance.amount,
  'is_tax_inclusive': instance.isTaxInclusive,
  'shipping_option_id': instance.shippingOptionId,
  'data': instance.data,
  'metadata': instance.metadata,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};
