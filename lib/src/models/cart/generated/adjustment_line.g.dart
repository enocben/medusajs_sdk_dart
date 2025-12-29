// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../adjustment_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdjustmentLineDTO _$AdjustmentLineDTOFromJson(Map<String, dynamic> json) =>
    AdjustmentLineDTO(
      id: json['id'] as String,
      code: json['code'] as String?,
      amount: json['amount'] as String,
      isTaxInclusive: json['is_tax_inclusive'] as bool?,
      rawAmount: json['raw_amount'] as Map<String, dynamic>,
      cartId: json['cart_id'] as String,
      description: json['description'] as String?,
      promotionId: json['promotion_id'] as String?,
      providerId: json['provider_id'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$AdjustmentLineDTOToJson(AdjustmentLineDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'amount': instance.amount,
      'is_tax_inclusive': instance.isTaxInclusive,
      'raw_amount': instance.rawAmount,
      'cart_id': instance.cartId,
      'description': instance.description,
      'promotion_id': instance.promotionId,
      'provider_id': instance.providerId,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

LineItemAdjustmentDTO _$LineItemAdjustmentDTOFromJson(
  Map<String, dynamic> json,
) => LineItemAdjustmentDTO(
  id: json['id'] as String,
  code: json['code'] as String?,
  amount: json['amount'] as String,
  isTaxInclusive: json['is_tax_inclusive'] as bool?,
  rawAmount: json['raw_amount'] as Map<String, dynamic>,
  cartId: json['cart_id'] as String,
  description: json['description'] as String?,
  promotionId: json['promotion_id'] as String?,
  providerId: json['provider_id'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  itemId: json['item_id'] as String,
);

Map<String, dynamic> _$LineItemAdjustmentDTOToJson(
  LineItemAdjustmentDTO instance,
) => <String, dynamic>{
  'id': instance.id,
  'code': instance.code,
  'amount': instance.amount,
  'is_tax_inclusive': instance.isTaxInclusive,
  'raw_amount': instance.rawAmount,
  'cart_id': instance.cartId,
  'description': instance.description,
  'promotion_id': instance.promotionId,
  'provider_id': instance.providerId,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
  'item_id': instance.itemId,
};

ShippingMethodAdjustmentDTO _$ShippingMethodAdjustmentDTOFromJson(
  Map<String, dynamic> json,
) => ShippingMethodAdjustmentDTO(
  id: json['id'] as String,
  code: json['code'] as String?,
  amount: json['amount'] as String,
  isTaxInclusive: json['is_tax_inclusive'] as bool?,
  rawAmount: json['raw_amount'] as Map<String, dynamic>,
  cartId: json['cart_id'] as String,
  description: json['description'] as String?,
  promotionId: json['promotion_id'] as String?,
  providerId: json['provider_id'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  shippingMethodId: json['shipping_method_id'] as String,
);

Map<String, dynamic> _$ShippingMethodAdjustmentDTOToJson(
  ShippingMethodAdjustmentDTO instance,
) => <String, dynamic>{
  'id': instance.id,
  'code': instance.code,
  'amount': instance.amount,
  'is_tax_inclusive': instance.isTaxInclusive,
  'raw_amount': instance.rawAmount,
  'cart_id': instance.cartId,
  'description': instance.description,
  'promotion_id': instance.promotionId,
  'provider_id': instance.providerId,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
  'shipping_method_id': instance.shippingMethodId,
};
