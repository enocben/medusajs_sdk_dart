import 'package:json_annotation/json_annotation.dart';

part 'generated/api_key.g.dart';

/// An API key's type
enum ApiKeyType {
  @JsonValue('secret')
  secret,
  @JsonValue('publishable')
  publishable,
}

/// The API key details
@JsonSerializable()
class ApiKeyDTO {
  /// The ID of the API key
  final String id;

  /// The token of the API key
  final String token;

  /// The redacted form of the API key's token. This is useful
  /// when showing portion of the token. For example `sk_...123`
  final String redacted;

  /// The title of the API key
  final String title;

  /// The type of the API key
  final ApiKeyType type;

  /// The date the API key was last used
  @JsonKey(name: 'last_used_at')
  final DateTime? lastUsedAt;

  /// Who created the API key
  @JsonKey(name: 'created_by')
  final String createdBy;

  /// The date the API key was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// The date the API key was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// The date the API key was deleted
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  /// Who revoked the API key. For example, the ID of the user that revoked it
  @JsonKey(name: 'revoked_by')
  final String? revokedBy;

  /// The date the API key was revoked
  @JsonKey(name: 'revoked_at')
  final DateTime? revokedAt;

  const ApiKeyDTO({
    required this.id,
    required this.token,
    required this.redacted,
    required this.title,
    required this.type,
    this.lastUsedAt,
    required this.createdBy,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    this.revokedBy,
    this.revokedAt,
  });

  factory ApiKeyDTO.fromJson(Map<String, dynamic> json) =>
      _$ApiKeyDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ApiKeyDTOToJson(this);
}
