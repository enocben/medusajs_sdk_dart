// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../currency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrencyDTO _$CurrencyDTOFromJson(Map<String, dynamic> json) => CurrencyDTO(
  code: json['code'] as String,
  symbol: json['symbol'] as String?,
  symbolNative: json['symbol_native'] as String?,
  name: json['name'] as String,
  decimalDigits: (json['decimal_digits'] as num?)?.toInt(),
  rounding: (json['rounding'] as num?)?.toInt(),
);

Map<String, dynamic> _$CurrencyDTOToJson(CurrencyDTO instance) =>
    <String, dynamic>{
      'code': instance.code,
      'symbol': instance.symbol,
      'symbol_native': instance.symbolNative,
      'name': instance.name,
      'decimal_digits': instance.decimalDigits,
      'rounding': instance.rounding,
    };
