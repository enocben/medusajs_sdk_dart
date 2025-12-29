// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../return_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReturnItemDTO _$ReturnItemDTOFromJson(Map<String, dynamic> json) =>
    ReturnItemDTO(
      id: json['id'] as String,
      returnId: json['return_id'] as String,
      itemId: json['item_id'] as String,
      reasonId: json['reason_id'] as String?,
      reason: json['reason'] == null
          ? null
          : ReturnReasonDTO.fromJson(json['reason'] as Map<String, dynamic>),
      quantity: (json['quantity'] as num).toInt(),
      receivedQuantity: (json['received_quantity'] as num?)?.toInt(),
      damagedQuantity: (json['damaged_quantity'] as num?)?.toInt(),
      note: json['note'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ReturnItemDTOToJson(ReturnItemDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'return_id': instance.returnId,
      'item_id': instance.itemId,
      'reason_id': instance.reasonId,
      'reason': instance.reason,
      'quantity': instance.quantity,
      'received_quantity': instance.receivedQuantity,
      'damaged_quantity': instance.damagedQuantity,
      'note': instance.note,
      'metadata': instance.metadata,
    };
