// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceDTO _$PriceDTOFromJson(Map<String, dynamic> json) => PriceDTO(
  id: json['id'] as String,
  title: json['title'] as String?,
  currencyCode: json['currency_code'] as String?,
  amount: json['amount'] as String?,
  minQuantity: json['min_quantity'] as String?,
  maxQuantity: json['max_quantity'] as String?,
  priceSetId: json['price_set_id'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  deletedAt: json['deleted_at'] == null
      ? null
      : DateTime.parse(json['deleted_at'] as String),
);

Map<String, dynamic> _$PriceDTOToJson(PriceDTO instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'currency_code': instance.currencyCode,
  'amount': instance.amount,
  'min_quantity': instance.minQuantity,
  'max_quantity': instance.maxQuantity,
  'price_set_id': instance.priceSetId,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
  'deleted_at': instance.deletedAt?.toIso8601String(),
};
