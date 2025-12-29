// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../order_shipping_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderShippingMethodDTO _$OrderShippingMethodDTOFromJson(
  Map<String, dynamic> json,
) => OrderShippingMethodDTO(
  id: json['id'] as String,
  orderId: json['order_id'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
  amount: json['amount'] as String,
  isTaxInclusive: json['is_tax_inclusive'] as bool,
  shippingOptionId: json['shipping_option_id'] as String?,
  data: json['data'] as Map<String, dynamic>?,
  metadata: json['metadata'] as Map<String, dynamic>?,
  taxLines: (json['tax_lines'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderShippingMethodTaxLineDTO.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  adjustments: (json['adjustments'] as List<dynamic>?)
      ?.map(
        (e) => OrderShippingMethodAdjustmentDTO.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  originalTotal: json['original_total'] as String,
  originalSubtotal: json['original_subtotal'] as String,
  originalTaxTotal: json['original_tax_total'] as String,
  total: json['total'] as String,
  subtotal: json['subtotal'] as String,
  taxTotal: json['tax_total'] as String,
  discountTotal: json['discount_total'] as String,
  discountTaxTotal: json['discount_tax_total'] as String,
);

Map<String, dynamic> _$OrderShippingMethodDTOToJson(
  OrderShippingMethodDTO instance,
) => <String, dynamic>{
  'id': instance.id,
  'order_id': instance.orderId,
  'name': instance.name,
  'description': instance.description,
  'amount': instance.amount,
  'is_tax_inclusive': instance.isTaxInclusive,
  'shipping_option_id': instance.shippingOptionId,
  'data': instance.data,
  'metadata': instance.metadata,
  'tax_lines': instance.taxLines,
  'adjustments': instance.adjustments,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
  'original_total': instance.originalTotal,
  'original_subtotal': instance.originalSubtotal,
  'original_tax_total': instance.originalTaxTotal,
  'total': instance.total,
  'subtotal': instance.subtotal,
  'tax_total': instance.taxTotal,
  'discount_total': instance.discountTotal,
  'discount_tax_total': instance.discountTaxTotal,
};
