import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';

part 'generated/tax_rate.g.dart';

/// The tax rate details
@JsonSerializable()
class TaxRateDTO {
  /// The ID of the tax rate
  final String id;

  /// The rate to charge
  /// Example: 10
  final double? rate;

  /// The code the tax rate is identified by
  final String? code;

  /// The name of the Tax Rate
  /// Example: VAT
  final String name;

  /// Holds custom data in key-value pairs
  final Metadata metadata;

  /// The ID of the associated tax region
  @JsonKey(name: 'tax_region_id')
  final String taxRegionId;

  /// Whether the tax rate should be combined with parent rates
  /// Learn more at https://docs.medusajs.com/resources/commerce-modules/tax/tax-rates-and-rules#combinable-tax-rates
  @JsonKey(name: 'is_combinable')
  final bool isCombinable;

  /// Whether the tax rate is the default rate for the region
  @JsonKey(name: 'is_default')
  final bool isDefault;

  /// The creation date of the tax rate
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// The update date of the tax rate
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// The deletion date of the tax rate
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  /// Who created the tax rate. For example, the ID of the user that created the tax rate
  @JsonKey(name: 'created_by')
  final String? createdBy;

  const TaxRateDTO({
    required this.id,
    this.rate,
    this.code,
    required this.name,
    this.metadata,
    required this.taxRegionId,
    required this.isCombinable,
    required this.isDefault,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    this.createdBy,
  });

  factory TaxRateDTO.fromJson(Map<String, dynamic> json) =>
      _$TaxRateDTOFromJson(json);

  Map<String, dynamic> toJson() => _$TaxRateDTOToJson(this);
}
