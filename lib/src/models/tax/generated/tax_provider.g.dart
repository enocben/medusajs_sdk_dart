// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../tax_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaxProviderDTO _$TaxProviderDTOFromJson(Map<String, dynamic> json) =>
    TaxProviderDTO(
      id: json['id'] as String,
      isEnabled: json['is_enabled'] as bool,
    );

Map<String, dynamic> _$TaxProviderDTOToJson(TaxProviderDTO instance) =>
    <String, dynamic>{'id': instance.id, 'is_enabled': instance.isEnabled};
