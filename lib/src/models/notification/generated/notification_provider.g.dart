// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../notification_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationProviderDTO _$NotificationProviderDTOFromJson(
  Map<String, dynamic> json,
) => NotificationProviderDTO(
  id: json['id'] as String,
  handle: json['handle'] as String,
  name: json['name'] as String,
  channels: (json['channels'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$NotificationProviderDTOToJson(
  NotificationProviderDTO instance,
) => <String, dynamic>{
  'id': instance.id,
  'handle': instance.handle,
  'name': instance.name,
  'channels': instance.channels,
};
