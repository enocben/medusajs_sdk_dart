// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../cart_line_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartLineItemDTO _$CartLineItemDTOFromJson(Map<String, dynamic> json) =>
    CartLineItemDTO(
      id: json['id'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String?,
      thumbnail: json['thumbnail'] as String?,
      quantity: json['quantity'] as String,
      productId: json['product_id'] as String?,
      productTitle: json['product_title'] as String?,
      productDescription: json['product_description'] as String?,
      productSubtitle: json['product_subtitle'] as String?,
      productType: json['product_type'] as String?,
      productTypeId: json['product_type_id'] as String?,
      productCollection: json['product_collection'] as String?,
      productHandle: json['product_handle'] as String?,
      variantId: json['variant_id'] as String?,
      variantSku: json['variant_sku'] as String?,
      variantBarcode: json['variant_barcode'] as String?,
      variantTitle: json['variant_title'] as String?,
      requiresShipping: json['requires_shipping'] as bool,
      isDiscountable: json['is_discountable'] as bool,
      isGiftcard: json['is_giftcard'] as bool,
      isTaxInclusive: json['is_tax_inclusive'] as bool,
      unitPrice: json['unit_price'] as String,
      cartId: json['cart_id'] as String,
      metadata: json['metadata'] as Map<String, dynamic>?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$CartLineItemDTOToJson(CartLineItemDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'thumbnail': instance.thumbnail,
      'quantity': instance.quantity,
      'product_id': instance.productId,
      'product_title': instance.productTitle,
      'product_description': instance.productDescription,
      'product_subtitle': instance.productSubtitle,
      'product_type': instance.productType,
      'product_type_id': instance.productTypeId,
      'product_collection': instance.productCollection,
      'product_handle': instance.productHandle,
      'variant_id': instance.variantId,
      'variant_sku': instance.variantSku,
      'variant_barcode': instance.variantBarcode,
      'variant_title': instance.variantTitle,
      'requires_shipping': instance.requiresShipping,
      'is_discountable': instance.isDiscountable,
      'is_giftcard': instance.isGiftcard,
      'is_tax_inclusive': instance.isTaxInclusive,
      'unit_price': instance.unitPrice,
      'cart_id': instance.cartId,
      'metadata': instance.metadata,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
    };
