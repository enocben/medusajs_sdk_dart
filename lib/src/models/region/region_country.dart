import 'package:json_annotation/json_annotation.dart';

part 'generated/region_country.g.dart';

/// The country details
@JsonSerializable()
class RegionCountryDTO {
  /// The ID of the country
  final String id;

  /// The ISO 2 code of the country
  @JsonKey(name: 'iso_2')
  final String iso2;

  /// The ISO 3 code of the country
  @JsonKey(name: 'iso_3')
  final String iso3;

  /// The country's code number
  @JsonKey(name: 'num_code')
  final String numCode;

  /// The name of the country
  final String name;

  /// The display name of the country
  @JsonKey(name: 'display_name')
  final String displayName;

  const RegionCountryDTO({
    required this.id,
    required this.iso2,
    required this.iso3,
    required this.numCode,
    required this.name,
    required this.displayName,
  });

  factory RegionCountryDTO.fromJson(Map<String, dynamic> json) =>
      _$RegionCountryDTOFromJson(json);

  Map<String, dynamic> toJson() => _$RegionCountryDTOToJson(this);
}
