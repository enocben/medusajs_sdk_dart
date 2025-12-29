// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../return_reason.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReturnReasonDTO _$ReturnReasonDTOFromJson(Map<String, dynamic> json) =>
    ReturnReasonDTO(
      id: json['id'] as String,
      value: json['value'] as String,
      label: json['label'] as String,
      description: json['description'] as String?,
      parentReturnReasonId: json['parent_return_reason_id'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$ReturnReasonDTOToJson(ReturnReasonDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'label': instance.label,
      'description': instance.description,
      'parent_return_reason_id': instance.parentReturnReasonId,
      'metadata': instance.metadata,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
    };
