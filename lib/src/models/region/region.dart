import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';

part 'generated/region.g.dart';

/// The region details
@JsonSerializable()
class RegionDTO {
  /// The ID of the region
  final String id;

  /// The name of the region
  final String name;

  /// The currency code of the region
  @JsonKey(name: 'currency_code')
  final String currencyCode;

  /// Setting to indicate whether taxes need to be applied automatically
  @JsonKey(name: 'automatic_taxes')
  final bool automaticTaxes;

  /// Holds custom data in key-value pairs
  final Metadata metadata;

  /// When the region was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// When the region was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  const RegionDTO({
    required this.id,
    required this.name,
    required this.currencyCode,
    required this.automaticTaxes,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
  });

  factory RegionDTO.fromJson(Map<String, dynamic> json) =>
      _$RegionDTOFromJson(json);

  Map<String, dynamic> toJson() => _$RegionDTOToJson(this);
}
