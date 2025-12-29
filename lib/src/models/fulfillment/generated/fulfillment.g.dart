// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../fulfillment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FulfillmentDTO _$FulfillmentDTOFromJson(Map<String, dynamic> json) =>
    FulfillmentDTO(
      id: json['id'] as String,
      locationId: json['location_id'] as String,
      packedAt: json['packed_at'] == null
          ? null
          : DateTime.parse(json['packed_at'] as String),
      shippedAt: json['shipped_at'] == null
          ? null
          : DateTime.parse(json['shipped_at'] as String),
      deliveredAt: json['delivered_at'] == null
          ? null
          : DateTime.parse(json['delivered_at'] as String),
      canceledAt: json['canceled_at'] == null
          ? null
          : DateTime.parse(json['canceled_at'] as String),
      data: json['data'] as Map<String, dynamic>?,
      providerId: json['provider_id'] as String,
      shippingOptionId: json['shipping_option_id'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      trackingLinks: (json['tracking_links'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => FulfillmentItemDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$FulfillmentDTOToJson(FulfillmentDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'location_id': instance.locationId,
      'packed_at': instance.packedAt?.toIso8601String(),
      'shipped_at': instance.shippedAt?.toIso8601String(),
      'delivered_at': instance.deliveredAt?.toIso8601String(),
      'canceled_at': instance.canceledAt?.toIso8601String(),
      'data': instance.data,
      'provider_id': instance.providerId,
      'shipping_option_id': instance.shippingOptionId,
      'metadata': instance.metadata,
      'tracking_links': instance.trackingLinks,
      'items': instance.items,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
    };
