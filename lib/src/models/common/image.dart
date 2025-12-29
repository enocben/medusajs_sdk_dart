import 'package:json_annotation/json_annotation.dart';
import 'metadata.dart';

part 'generated/image.g.dart';

/// Generic image model
/// Used for product images and other image resources
@JsonSerializable()
class ImageDTO {
  /// The ID of the image
  final String id;

  /// The URL of the image
  final String url;

  /// Optional metadata for the image
  final Metadata metadata;

  /// When the image was created
  final DateTime createdAt;

  /// When the image was updated
  final DateTime updatedAt;

  const ImageDTO({
    required this.id,
    required this.url,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ImageDTO.fromJson(Map<String, dynamic> json) =>
      _$ImageDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ImageDTOToJson(this);
}
