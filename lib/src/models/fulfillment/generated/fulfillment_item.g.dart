// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../fulfillment_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FulfillmentItemDTO _$FulfillmentItemDTOFromJson(Map<String, dynamic> json) =>
    FulfillmentItemDTO(
      id: json['id'] as String,
      fulfillmentId: json['fulfillment_id'] as String,
      lineItemId: json['line_item_id'] as String,
      inventoryItemId: json['inventory_item_id'] as String,
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$FulfillmentItemDTOToJson(FulfillmentItemDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fulfillment_id': instance.fulfillmentId,
      'line_item_id': instance.lineItemId,
      'inventory_item_id': instance.inventoryItemId,
      'quantity': instance.quantity,
    };
