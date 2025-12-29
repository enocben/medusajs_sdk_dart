// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
  id: json['id'] as String,
  title: json['title'] as String,
  handle: json['handle'] as String,
  subtitle: json['subtitle'] as String?,
  description: json['description'] as String?,
  isGiftcard: json['is_giftcard'] as bool,
  status: $enumDecode(_$ProductStatusEnumMap, json['status']),
  thumbnail: json['thumbnail'] as String?,
  width: (json['width'] as num?)?.toDouble(),
  weight: (json['weight'] as num?)?.toDouble(),
  length: (json['length'] as num?)?.toDouble(),
  height: (json['height'] as num?)?.toDouble(),
  originCountry: json['origin_country'] as String?,
  hsCode: json['hs_code'] as String?,
  midCode: json['mid_code'] as String?,
  material: json['material'] as String?,
  collection: json['collection'] == null
      ? null
      : ProductCollectionDTO.fromJson(
          json['collection'] as Map<String, dynamic>,
        ),
  collectionId: json['collection_id'] as String?,
  categories: (json['categories'] as List<dynamic>?)
      ?.map((e) => ProductCategoryDTO.fromJson(e as Map<String, dynamic>))
      .toList(),
  type: json['type'] == null
      ? null
      : ProductTypeDTO.fromJson(json['type'] as Map<String, dynamic>),
  typeId: json['type_id'] as String?,
  tags:
      (json['tags'] as List<dynamic>?)
          ?.map((e) => ProductTagDTO.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  variants:
      (json['variants'] as List<dynamic>?)
          ?.map((e) => ProductVariantDTO.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  options:
      (json['options'] as List<dynamic>?)
          ?.map((e) => ProductOptionDTO.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  images:
      (json['images'] as List<dynamic>?)
          ?.map((e) => ProductImageDTO.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  discountable: json['discountable'] as bool?,
  externalId: json['external_id'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  deletedAt: json['deleted_at'] == null
      ? null
      : DateTime.parse(json['deleted_at'] as String),
);

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'handle': instance.handle,
  'subtitle': instance.subtitle,
  'description': instance.description,
  'is_giftcard': instance.isGiftcard,
  'status': _$ProductStatusEnumMap[instance.status]!,
  'thumbnail': instance.thumbnail,
  'width': instance.width,
  'weight': instance.weight,
  'length': instance.length,
  'height': instance.height,
  'origin_country': instance.originCountry,
  'hs_code': instance.hsCode,
  'mid_code': instance.midCode,
  'material': instance.material,
  'collection': instance.collection,
  'collection_id': instance.collectionId,
  'categories': instance.categories,
  'type': instance.type,
  'type_id': instance.typeId,
  'tags': instance.tags,
  'variants': instance.variants,
  'options': instance.options,
  'images': instance.images,
  'discountable': instance.discountable,
  'external_id': instance.externalId,
  'metadata': instance.metadata,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
  'deleted_at': instance.deletedAt?.toIso8601String(),
};

const _$ProductStatusEnumMap = {
  ProductStatus.draft: 'draft',
  ProductStatus.proposed: 'proposed',
  ProductStatus.published: 'published',
  ProductStatus.rejected: 'rejected',
};

ProductListResponse _$ProductListResponseFromJson(Map<String, dynamic> json) =>
    ProductListResponse(
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: (json['count'] as num).toInt(),
      offset: (json['offset'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
    );

Map<String, dynamic> _$ProductListResponseToJson(
  ProductListResponse instance,
) => <String, dynamic>{
  'products': instance.products,
  'count': instance.count,
  'offset': instance.offset,
  'limit': instance.limit,
};
