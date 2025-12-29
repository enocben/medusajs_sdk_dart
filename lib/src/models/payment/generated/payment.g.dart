// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentDTO _$PaymentDTOFromJson(Map<String, dynamic> json) => PaymentDTO(
  id: json['id'] as String,
  amount: json['amount'] as String,
  currencyCode: json['currency_code'] as String,
  providerId: json['provider_id'] as String,
  cartId: json['cart_id'] as String?,
  orderId: json['order_id'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$PaymentDTOToJson(PaymentDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'currency_code': instance.currencyCode,
      'provider_id': instance.providerId,
      'cart_id': instance.cartId,
      'order_id': instance.orderId,
      'metadata': instance.metadata,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
