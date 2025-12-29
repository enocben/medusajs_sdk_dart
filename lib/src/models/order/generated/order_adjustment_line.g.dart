// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../order_adjustment_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderAdjustmentLineDTO _$OrderAdjustmentLineDTOFromJson(
  Map<String, dynamic> json,
) => OrderAdjustmentLineDTO(
  id: json['id'] as String,
  code: json['code'] as String?,
  amount: json['amount'] as String,
  orderId: json['order_id'] as String,
  description: json['description'] as String?,
  promotionId: json['promotion_id'] as String?,
  providerId: json['provider_id'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$OrderAdjustmentLineDTOToJson(
  OrderAdjustmentLineDTO instance,
) => <String, dynamic>{
  'id': instance.id,
  'code': instance.code,
  'amount': instance.amount,
  'order_id': instance.orderId,
  'description': instance.description,
  'promotion_id': instance.promotionId,
  'provider_id': instance.providerId,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};

OrderLineItemAdjustmentDTO _$OrderLineItemAdjustmentDTOFromJson(
  Map<String, dynamic> json,
) => OrderLineItemAdjustmentDTO(
  id: json['id'] as String,
  code: json['code'] as String?,
  amount: json['amount'] as String,
  orderId: json['order_id'] as String,
  description: json['description'] as String?,
  promotionId: json['promotion_id'] as String?,
  providerId: json['provider_id'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  itemId: json['item_id'] as String,
);

Map<String, dynamic> _$OrderLineItemAdjustmentDTOToJson(
  OrderLineItemAdjustmentDTO instance,
) => <String, dynamic>{
  'id': instance.id,
  'code': instance.code,
  'amount': instance.amount,
  'order_id': instance.orderId,
  'description': instance.description,
  'promotion_id': instance.promotionId,
  'provider_id': instance.providerId,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
  'item_id': instance.itemId,
};

OrderShippingMethodAdjustmentDTO _$OrderShippingMethodAdjustmentDTOFromJson(
  Map<String, dynamic> json,
) => OrderShippingMethodAdjustmentDTO(
  id: json['id'] as String,
  code: json['code'] as String?,
  amount: json['amount'] as String,
  orderId: json['order_id'] as String,
  description: json['description'] as String?,
  promotionId: json['promotion_id'] as String?,
  providerId: json['provider_id'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  shippingMethodId: json['shipping_method_id'] as String,
);

Map<String, dynamic> _$OrderShippingMethodAdjustmentDTOToJson(
  OrderShippingMethodAdjustmentDTO instance,
) => <String, dynamic>{
  'id': instance.id,
  'code': instance.code,
  'amount': instance.amount,
  'order_id': instance.orderId,
  'description': instance.description,
  'promotion_id': instance.promotionId,
  'provider_id': instance.providerId,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
  'shipping_method_id': instance.shippingMethodId,
};
