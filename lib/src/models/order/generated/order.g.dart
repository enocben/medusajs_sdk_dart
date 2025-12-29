// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDTO _$OrderDTOFromJson(Map<String, dynamic> json) => OrderDTO(
  id: json['id'] as String,
  version: (json['version'] as num).toInt(),
  displayId: (json['display_id'] as num).toInt(),
  customDisplayId: json['custom_display_id'] as String?,
  status: $enumDecode(_$OrderStatusEnumMap, json['status']),
  regionId: json['region_id'] as String?,
  customerId: json['customer_id'] as String?,
  salesChannelId: json['sales_channel_id'] as String?,
  email: json['email'] as String?,
  currencyCode: json['currency_code'] as String,
  shippingAddress: json['shipping_address'] == null
      ? null
      : OrderAddressDTO.fromJson(
          json['shipping_address'] as Map<String, dynamic>,
        ),
  billingAddress: json['billing_address'] == null
      ? null
      : OrderAddressDTO.fromJson(
          json['billing_address'] as Map<String, dynamic>,
        ),
  items: (json['items'] as List<dynamic>?)
      ?.map((e) => OrderLineItemDTO.fromJson(e as Map<String, dynamic>))
      .toList(),
  shippingMethods: (json['shipping_methods'] as List<dynamic>?)
      ?.map((e) => OrderShippingMethodDTO.fromJson(e as Map<String, dynamic>))
      .toList(),
  summary: json['summary'] == null
      ? null
      : OrderSummaryDTO.fromJson(json['summary'] as Map<String, dynamic>),
  isDraftOrder: json['is_draft_order'] as bool?,
  locale: json['locale'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
  canceledAt: json['canceled_at'] == null
      ? null
      : DateTime.parse(json['canceled_at'] as String),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  deletedAt: json['deleted_at'] == null
      ? null
      : DateTime.parse(json['deleted_at'] as String),
  originalItemTotal: json['original_item_total'] as String,
  originalItemSubtotal: json['original_item_subtotal'] as String,
  originalItemTaxTotal: json['original_item_tax_total'] as String,
  itemTotal: json['item_total'] as String,
  itemSubtotal: json['item_subtotal'] as String,
  itemTaxTotal: json['item_tax_total'] as String,
  itemDiscountTotal: json['item_discount_total'] as String,
  originalTotal: json['original_total'] as String,
  originalSubtotal: json['original_subtotal'] as String,
  originalTaxTotal: json['original_tax_total'] as String,
  total: json['total'] as String,
  subtotal: json['subtotal'] as String,
  taxTotal: json['tax_total'] as String,
  discountSubtotal: json['discount_subtotal'] as String,
  discountTotal: json['discount_total'] as String,
  discountTaxTotal: json['discount_tax_total'] as String,
  creditLineTotal: json['credit_line_total'] as String,
  giftCardTotal: json['gift_card_total'] as String,
  giftCardTaxTotal: json['gift_card_tax_total'] as String,
  shippingTotal: json['shipping_total'] as String,
  shippingSubtotal: json['shipping_subtotal'] as String,
  shippingTaxTotal: json['shipping_tax_total'] as String,
  shippingDiscountTotal: json['shipping_discount_total'] as String,
  originalShippingTotal: json['original_shipping_total'] as String,
  originalShippingSubtotal: json['original_shipping_subtotal'] as String,
  originalShippingTaxTotal: json['original_shipping_tax_total'] as String,
);

Map<String, dynamic> _$OrderDTOToJson(OrderDTO instance) => <String, dynamic>{
  'id': instance.id,
  'version': instance.version,
  'display_id': instance.displayId,
  'custom_display_id': instance.customDisplayId,
  'status': _$OrderStatusEnumMap[instance.status]!,
  'region_id': instance.regionId,
  'customer_id': instance.customerId,
  'sales_channel_id': instance.salesChannelId,
  'email': instance.email,
  'currency_code': instance.currencyCode,
  'shipping_address': instance.shippingAddress,
  'billing_address': instance.billingAddress,
  'items': instance.items,
  'shipping_methods': instance.shippingMethods,
  'summary': instance.summary,
  'is_draft_order': instance.isDraftOrder,
  'locale': instance.locale,
  'metadata': instance.metadata,
  'canceled_at': instance.canceledAt?.toIso8601String(),
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
  'deleted_at': instance.deletedAt?.toIso8601String(),
  'original_item_total': instance.originalItemTotal,
  'original_item_subtotal': instance.originalItemSubtotal,
  'original_item_tax_total': instance.originalItemTaxTotal,
  'item_total': instance.itemTotal,
  'item_subtotal': instance.itemSubtotal,
  'item_tax_total': instance.itemTaxTotal,
  'item_discount_total': instance.itemDiscountTotal,
  'original_total': instance.originalTotal,
  'original_subtotal': instance.originalSubtotal,
  'original_tax_total': instance.originalTaxTotal,
  'total': instance.total,
  'subtotal': instance.subtotal,
  'tax_total': instance.taxTotal,
  'discount_subtotal': instance.discountSubtotal,
  'discount_total': instance.discountTotal,
  'discount_tax_total': instance.discountTaxTotal,
  'credit_line_total': instance.creditLineTotal,
  'gift_card_total': instance.giftCardTotal,
  'gift_card_tax_total': instance.giftCardTaxTotal,
  'shipping_total': instance.shippingTotal,
  'shipping_subtotal': instance.shippingSubtotal,
  'shipping_tax_total': instance.shippingTaxTotal,
  'shipping_discount_total': instance.shippingDiscountTotal,
  'original_shipping_total': instance.originalShippingTotal,
  'original_shipping_subtotal': instance.originalShippingSubtotal,
  'original_shipping_tax_total': instance.originalShippingTaxTotal,
};

const _$OrderStatusEnumMap = {
  OrderStatus.pending: 'pending',
  OrderStatus.completed: 'completed',
  OrderStatus.draft: 'draft',
  OrderStatus.archived: 'archived',
  OrderStatus.canceled: 'canceled',
  OrderStatus.requiresAction: 'requires_action',
};
