import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';

part 'generated/user.g.dart';

/// The user details
@JsonSerializable()
class UserDTO {
  /// The ID of the user
  final String id;

  /// The email of the user
  final String email;

  /// The first name of the user
  @JsonKey(name: 'first_name')
  final String? firstName;

  /// The last name of the user
  @JsonKey(name: 'last_name')
  final String? lastName;

  /// The avatar URL of the user
  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;

  /// Holds custom data in key-value pairs
  final Metadata metadata;

  /// The creation date of the user
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// The updated date of the user
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// The deletion date of the user
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  const UserDTO({
    required this.id,
    required this.email,
    this.firstName,
    this.lastName,
    this.avatarUrl,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  Map<String, dynamic> toJson() => _$UserDTOToJson(this);
}
