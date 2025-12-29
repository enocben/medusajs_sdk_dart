import 'package:json_annotation/json_annotation.dart';

part 'generated/promotion.g.dart';

/// The promotion's possible types
enum PromotionType {
  @JsonValue('standard')
  standard,
  @JsonValue('buyget')
  buyget,
}

/// The promotion's possible statuses
enum PromotionStatus {
  @JsonValue('draft')
  draft,
  @JsonValue('active')
  active,
  @JsonValue('inactive')
  inactive,
}

/// The promotion details
@JsonSerializable()
class PromotionDTO {
  /// The ID of the promotion
  final String id;

  /// The code of the promotion
  final String? code;

  /// The type of the promotion
  final PromotionType? type;

  /// The status of the promotion
  final PromotionStatus? status;

  /// Whether the promotion is applied automatically
  @JsonKey(name: 'is_automatic')
  final bool? isAutomatic;

  /// Whether the promotion is tax inclusive
  @JsonKey(name: 'is_tax_inclusive')
  final bool? isTaxInclusive;

  /// The maximum number of times this promotion can be used across all orders
  final int? limit;

  /// The number of times this promotion has been used in completed orders
  final int? used;

  /// The associated campaign ID
  @JsonKey(name: 'campaign_id')
  final String? campaignId;

  const PromotionDTO({
    required this.id,
    this.code,
    this.type,
    this.status,
    this.isAutomatic,
    this.isTaxInclusive,
    this.limit,
    this.used,
    this.campaignId,
  });

  factory PromotionDTO.fromJson(Map<String, dynamic> json) =>
      _$PromotionDTOFromJson(json);

  Map<String, dynamic> toJson() => _$PromotionDTOToJson(this);
}
