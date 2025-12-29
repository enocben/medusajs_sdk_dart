// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../return.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReturnDTO _$ReturnDTOFromJson(Map<String, dynamic> json) => ReturnDTO(
  id: json['id'] as String,
  status: $enumDecode(_$ReturnStatusEnumMap, json['status']),
  refundAmount: json['refund_amount'] as String?,
  orderId: json['order_id'] as String,
  items: (json['items'] as List<dynamic>?)
      ?.map((e) => ReturnItemDTO.fromJson(e as Map<String, dynamic>))
      .toList(),
  displayId: (json['display_id'] as num).toInt(),
  locationId: json['location_id'] as String?,
  noNotification: json['no_notification'] as bool?,
  createdBy: json['created_by'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
  requestedAt: json['requested_at'] == null
      ? null
      : DateTime.parse(json['requested_at'] as String),
  receivedAt: json['received_at'] == null
      ? null
      : DateTime.parse(json['received_at'] as String),
  canceledAt: json['canceled_at'] == null
      ? null
      : DateTime.parse(json['canceled_at'] as String),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$ReturnDTOToJson(ReturnDTO instance) => <String, dynamic>{
  'id': instance.id,
  'status': _$ReturnStatusEnumMap[instance.status]!,
  'refund_amount': instance.refundAmount,
  'order_id': instance.orderId,
  'items': instance.items,
  'display_id': instance.displayId,
  'location_id': instance.locationId,
  'no_notification': instance.noNotification,
  'created_by': instance.createdBy,
  'metadata': instance.metadata,
  'requested_at': instance.requestedAt?.toIso8601String(),
  'received_at': instance.receivedAt?.toIso8601String(),
  'canceled_at': instance.canceledAt?.toIso8601String(),
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};

const _$ReturnStatusEnumMap = {
  ReturnStatus.requested: 'requested',
  ReturnStatus.received: 'received',
  ReturnStatus.partiallyReceived: 'partially_received',
  ReturnStatus.canceled: 'canceled',
};
