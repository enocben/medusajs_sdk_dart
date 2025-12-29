// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../promotion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PromotionDTO _$PromotionDTOFromJson(Map<String, dynamic> json) => PromotionDTO(
  id: json['id'] as String,
  code: json['code'] as String?,
  type: $enumDecodeNullable(_$PromotionTypeEnumMap, json['type']),
  status: $enumDecodeNullable(_$PromotionStatusEnumMap, json['status']),
  isAutomatic: json['is_automatic'] as bool?,
  isTaxInclusive: json['is_tax_inclusive'] as bool?,
  limit: (json['limit'] as num?)?.toInt(),
  used: (json['used'] as num?)?.toInt(),
  campaignId: json['campaign_id'] as String?,
);

Map<String, dynamic> _$PromotionDTOToJson(PromotionDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'type': _$PromotionTypeEnumMap[instance.type],
      'status': _$PromotionStatusEnumMap[instance.status],
      'is_automatic': instance.isAutomatic,
      'is_tax_inclusive': instance.isTaxInclusive,
      'limit': instance.limit,
      'used': instance.used,
      'campaign_id': instance.campaignId,
    };

const _$PromotionTypeEnumMap = {
  PromotionType.standard: 'standard',
  PromotionType.buyget: 'buyget',
};

const _$PromotionStatusEnumMap = {
  PromotionStatus.draft: 'draft',
  PromotionStatus.active: 'active',
  PromotionStatus.inactive: 'inactive',
};
