import 'package:json_annotation/json_annotation.dart';

part 'generated/translation.g.dart';

/// The translation details
@JsonSerializable()
class TranslationDTO {
  /// The ID of the translation
  final String id;

  /// The ID of the entity being translated
  @JsonKey(name: 'reference_id')
  final String referenceId;

  /// The type of entity being translated (e.g., "product", "product_variant")
  final String reference;

  /// The BCP 47 language tag code for this translation (e.g., "en-US", "fr-FR")
  @JsonKey(name: 'locale_code')
  final String localeCode;

  /// The translated fields as key-value pairs
  final Map<String, dynamic> translations;

  /// The date and time the translation was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// The date and time the translation was last updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// The date and time the translation was deleted
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  const TranslationDTO({
    required this.id,
    required this.referenceId,
    required this.reference,
    required this.localeCode,
    required this.translations,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });

  factory TranslationDTO.fromJson(Map<String, dynamic> json) =>
      _$TranslationDTOFromJson(json);

  Map<String, dynamic> toJson() => _$TranslationDTOToJson(this);
}
