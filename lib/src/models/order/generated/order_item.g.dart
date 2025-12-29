// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../order_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderItemDTO _$OrderItemDTOFromJson(Map<String, dynamic> json) => OrderItemDTO(
  id: json['id'] as String,
  itemId: json['item_id'] as String,
  quantity: (json['quantity'] as num).toInt(),
  fulfilledQuantity: (json['fulfilled_quantity'] as num).toInt(),
  deliveredQuantity: (json['delivered_quantity'] as num).toInt(),
  shippedQuantity: (json['shipped_quantity'] as num).toInt(),
  returnRequestedQuantity: (json['return_requested_quantity'] as num).toInt(),
  returnReceivedQuantity: (json['return_received_quantity'] as num).toInt(),
  returnDismissedQuantity: (json['return_dismissed_quantity'] as num).toInt(),
  writtenOffQuantity: (json['written_off_quantity'] as num).toInt(),
  metadata: json['metadata'] as Map<String, dynamic>?,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$OrderItemDTOToJson(OrderItemDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'item_id': instance.itemId,
      'quantity': instance.quantity,
      'fulfilled_quantity': instance.fulfilledQuantity,
      'delivered_quantity': instance.deliveredQuantity,
      'shipped_quantity': instance.shippedQuantity,
      'return_requested_quantity': instance.returnRequestedQuantity,
      'return_received_quantity': instance.returnReceivedQuantity,
      'return_dismissed_quantity': instance.returnDismissedQuantity,
      'written_off_quantity': instance.writtenOffQuantity,
      'metadata': instance.metadata,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
