// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../price_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceListDTO _$PriceListDTOFromJson(Map<String, dynamic> json) => PriceListDTO(
  id: json['id'] as String,
  title: json['title'] as String?,
  description: json['description'] as String?,
  startsAt: json['starts_at'] as String?,
  status: $enumDecodeNullable(_$PriceListStatusEnumMap, json['status']),
  type: $enumDecodeNullable(_$PriceListTypeEnumMap, json['type']),
  endsAt: json['ends_at'] as String?,
  rulesCount: (json['rules_count'] as num?)?.toInt(),
  prices: (json['prices'] as List<dynamic>?)
      ?.map((e) => PriceDTO.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PriceListDTOToJson(PriceListDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'starts_at': instance.startsAt,
      'status': _$PriceListStatusEnumMap[instance.status],
      'type': _$PriceListTypeEnumMap[instance.type],
      'ends_at': instance.endsAt,
      'rules_count': instance.rulesCount,
      'prices': instance.prices,
    };

const _$PriceListStatusEnumMap = {
  PriceListStatus.active: 'active',
  PriceListStatus.draft: 'draft',
};

const _$PriceListTypeEnumMap = {
  PriceListType.sale: 'sale',
  PriceListType.override: 'override',
};
