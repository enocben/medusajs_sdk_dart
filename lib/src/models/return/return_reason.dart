import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';

part 'generated/return_reason.g.dart';

/// The return reason details
@JsonSerializable()
class ReturnReasonDTO {
  /// The ID of the return reason
  final String id;

  /// The value of the return reason
  final String value;

  /// The label of the return reason
  final String label;

  /// The description of the return reason
  final String? description;

  /// The parent return reason ID
  @JsonKey(name: 'parent_return_reason_id')
  final String? parentReturnReasonId;

  /// Holds custom data in key-value pairs
  final Metadata? metadata;

  /// When the return reason was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// When the return reason was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// When the return reason was deleted
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  const ReturnReasonDTO({
    required this.id,
    required this.value,
    required this.label,
    this.description,
    this.parentReturnReasonId,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });

  factory ReturnReasonDTO.fromJson(Map<String, dynamic> json) =>
      _$ReturnReasonDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ReturnReasonDTOToJson(this);
}
