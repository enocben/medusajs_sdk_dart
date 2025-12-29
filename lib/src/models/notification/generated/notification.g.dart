// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationDTO _$NotificationDTOFromJson(Map<String, dynamic> json) =>
    NotificationDTO(
      id: json['id'] as String,
      to: json['to'] as String,
      from: json['from'] as String?,
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => Attachment.fromJson(e as Map<String, dynamic>))
          .toList(),
      channel: json['channel'] as String,
      template: json['template'] as String,
      data: json['data'] as Map<String, dynamic>?,
      providerData: json['provider_data'] as Map<String, dynamic>?,
      triggerType: json['trigger_type'] as String?,
      resourceId: json['resource_id'] as String?,
      resourceType: json['resource_type'] as String?,
      receiverId: json['receiver_id'] as String?,
      originalNotificationId: json['original_notification_id'] as String?,
      externalId: json['external_id'] as String?,
      providerId: json['provider_id'] as String,
      provider: NotificationProviderDTO.fromJson(
        json['provider'] as Map<String, dynamic>,
      ),
      createdAt: DateTime.parse(json['created_at'] as String),
      status: $enumDecode(_$NotificationStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$NotificationDTOToJson(NotificationDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'to': instance.to,
      'from': instance.from,
      'attachments': instance.attachments,
      'channel': instance.channel,
      'template': instance.template,
      'data': instance.data,
      'provider_data': instance.providerData,
      'trigger_type': instance.triggerType,
      'resource_id': instance.resourceId,
      'resource_type': instance.resourceType,
      'receiver_id': instance.receiverId,
      'original_notification_id': instance.originalNotificationId,
      'external_id': instance.externalId,
      'provider_id': instance.providerId,
      'provider': instance.provider,
      'created_at': instance.createdAt.toIso8601String(),
      'status': _$NotificationStatusEnumMap[instance.status]!,
    };

const _$NotificationStatusEnumMap = {
  NotificationStatus.pending: 'pending',
  NotificationStatus.success: 'success',
  NotificationStatus.failure: 'failure',
};
