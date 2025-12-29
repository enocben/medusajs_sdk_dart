import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';

part 'generated/tax_region.g.dart';

/// The tax region details
@JsonSerializable()
class TaxRegionDTO {
  /// The ID of the tax region
  final String id;

  /// The ISO 2 character country code of the tax region
  @JsonKey(name: 'country_code')
  final String countryCode;

  /// The lower-case ISO 3166-2 province or state code of the tax region
  @JsonKey(name: 'province_code')
  final String? provinceCode;

  /// The ID of the tax region's parent tax region
  @JsonKey(name: 'parent_id')
  final String? parentId;

  /// The ID of the tax provider for the region
  @JsonKey(name: 'provider_id')
  final String? providerId;

  /// Holds custom data in key-value pairs
  final Metadata metadata;

  /// The creation date of the tax region
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// The update date of the tax region
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// Who created the tax region. For example, the ID of the user that created the tax region
  @JsonKey(name: 'created_by')
  final String? createdBy;

  /// The deletion date of the tax region
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  const TaxRegionDTO({
    required this.id,
    required this.countryCode,
    this.provinceCode,
    this.parentId,
    this.providerId,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
    this.createdBy,
    this.deletedAt,
  });

  factory TaxRegionDTO.fromJson(Map<String, dynamic> json) =>
      _$TaxRegionDTOFromJson(json);

  Map<String, dynamic> toJson() => _$TaxRegionDTOToJson(this);
}
