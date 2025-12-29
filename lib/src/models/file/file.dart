import 'package:json_annotation/json_annotation.dart';

part 'generated/file.g.dart';

/// The access level of the file
enum FileAccessPermission {
  @JsonValue('public')
  public,
  @JsonValue('private')
  private,
}

/// The File details
@JsonSerializable()
class FileDTO {
  /// The ID of the file. You can use this ID later to retrieve or delete the file
  final String id;

  /// The URL of the file
  final String url;

  const FileDTO({required this.id, required this.url});

  factory FileDTO.fromJson(Map<String, dynamic> json) =>
      _$FileDTOFromJson(json);

  Map<String, dynamic> toJson() => _$FileDTOToJson(this);
}
