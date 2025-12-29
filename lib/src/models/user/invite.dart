import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';

part 'generated/invite.g.dart';

/// The invite details
@JsonSerializable()
class InviteDTO {
  /// The ID of the invite
  final String id;

  /// The email of the invite
  final String email;

  /// Whether the invite is accepted
  final bool accepted;

  /// The token of the invite
  final String token;

  /// The invite's expiry date
  @JsonKey(name: 'expires_at')
  final DateTime expiresAt;

  /// Holds custom data in key-value pairs
  final Metadata metadata;

  /// The invite's creation date
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// The invite's update date
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// The invite's deletion date
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  const InviteDTO({
    required this.id,
    required this.email,
    required this.accepted,
    required this.token,
    required this.expiresAt,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });

  factory InviteDTO.fromJson(Map<String, dynamic> json) =>
      _$InviteDTOFromJson(json);

  Map<String, dynamic> toJson() => _$InviteDTOToJson(this);
}
