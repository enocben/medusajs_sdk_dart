// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../attachment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Attachment _$AttachmentFromJson(Map<String, dynamic> json) => Attachment(
  content: json['content'] as String,
  filename: json['filename'] as String,
  contentType: json['content_type'] as String?,
  disposition: json['disposition'] as String?,
  id: json['id'] as String?,
);

Map<String, dynamic> _$AttachmentToJson(Attachment instance) =>
    <String, dynamic>{
      'content': instance.content,
      'filename': instance.filename,
      'content_type': instance.contentType,
      'disposition': instance.disposition,
      'id': instance.id,
    };
