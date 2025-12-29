import 'package:json_annotation/json_annotation.dart';

part 'generated/locale.g.dart';

/// The locale details
@JsonSerializable()
class LocaleDTO {
  /// The ID of the locale
  final String id;

  /// The BCP 47 language tag code of the locale (e.g., "en-US", "fr-FR")
  final String code;

  /// The human-readable name of the locale (e.g., "English (United States)")
  final String name;

  /// The date and time the locale was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// The date and time the locale was last updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// The date and time the locale was deleted
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  const LocaleDTO({
    required this.id,
    required this.code,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });

  factory LocaleDTO.fromJson(Map<String, dynamic> json) =>
      _$LocaleDTOFromJson(json);

  Map<String, dynamic> toJson() => _$LocaleDTOToJson(this);
}
