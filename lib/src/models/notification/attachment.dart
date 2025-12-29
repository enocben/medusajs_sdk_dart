import 'package:json_annotation/json_annotation.dart';

part 'generated/attachment.g.dart';

/// The structure for attachments in a notification
@JsonSerializable()
class Attachment {
  /// The content of the attachment, encoded as a binary string
  final String content;

  /// The filename of the attachment
  final String filename;

  /// The MIME type of the attachment
  @JsonKey(name: 'content_type')
  final String? contentType;

  /// The disposition of the attachment, For example, "inline" or "attachment"
  final String? disposition;

  /// The ID, if the attachment is meant to be referenced within the body of the message
  final String? id;

  const Attachment({
    required this.content,
    required this.filename,
    this.contentType,
    this.disposition,
    this.id,
  });

  factory Attachment.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFromJson(json);

  Map<String, dynamic> toJson() => _$AttachmentToJson(this);
}
