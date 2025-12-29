import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';

part 'generated/sales_channel.g.dart';

/// The sales channel details
@JsonSerializable()
class SalesChannelDTO {
  /// The ID of the sales channel
  final String id;

  /// The name of the sales channel
  final String name;

  /// The description of the sales channel
  final String? description;

  /// Whether the sales channel is disabled
  @JsonKey(name: 'is_disabled')
  final bool isDisabled;

  /// Holds custom data in key-value pairs
  final Metadata? metadata;

  /// When the sales channel was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// When the sales channel was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// When the sales channel was deleted
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  const SalesChannelDTO({
    required this.id,
    required this.name,
    this.description,
    required this.isDisabled,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });

  factory SalesChannelDTO.fromJson(Map<String, dynamic> json) =>
      _$SalesChannelDTOFromJson(json);

  Map<String, dynamic> toJson() => _$SalesChannelDTOToJson(this);
}
