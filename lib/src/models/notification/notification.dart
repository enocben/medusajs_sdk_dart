import 'package:json_annotation/json_annotation.dart';
import 'attachment.dart';
import 'notification_provider.dart';

part 'generated/notification.g.dart';

/// The status of the notification
enum NotificationStatus {
  @JsonValue('pending')
  pending,
  @JsonValue('success')
  success,
  @JsonValue('failure')
  failure,
}

/// A notification's data
@JsonSerializable()
class NotificationDTO {
  /// The ID of the notification
  final String id;

  /// The recipient of the notification. It can be email, phone number, or username, depending on the channel
  final String to;

  /// The sender of the notification. It can be email, phone number, or username, depending on the channel
  final String? from;

  /// Optional attachments for the notification
  final List<Attachment>? attachments;

  /// The channel through which the notification is sent, such as 'email' or 'sms'
  final String channel;

  /// The template name in the provider's system
  final String template;

  /// The data that gets passed over to the provider for rendering the notification
  final Map<String, dynamic>? data;

  /// Additional data specific to the provider or channel. For example, cc and bcc for emails
  @JsonKey(name: 'provider_data')
  final Map<String, dynamic>? providerData;

  /// The event name, the workflow, or anything else that can help to identify what triggered the notification
  @JsonKey(name: 'trigger_type')
  final String? triggerType;

  /// The ID of the resource this notification is for, if applicable. Useful for displaying relevant information in the UI
  @JsonKey(name: 'resource_id')
  final String? resourceId;

  /// The type of the resource this notification is for, if applicable, eg. "order"
  @JsonKey(name: 'resource_type')
  final String? resourceType;

  /// The ID of the customer this notification is for, if applicable
  @JsonKey(name: 'receiver_id')
  final String? receiverId;

  /// The original notification, in case this is a retried notification
  @JsonKey(name: 'original_notification_id')
  final String? originalNotificationId;

  /// The id of the notification in the external system, if applicable
  @JsonKey(name: 'external_id')
  final String? externalId;

  /// The ID of the notification provider
  @JsonKey(name: 'provider_id')
  final String providerId;

  /// Information about the notification provider
  final NotificationProviderDTO provider;

  /// The date and time the notification was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// The status of the notification
  final NotificationStatus status;

  const NotificationDTO({
    required this.id,
    required this.to,
    this.from,
    this.attachments,
    required this.channel,
    required this.template,
    this.data,
    this.providerData,
    this.triggerType,
    this.resourceId,
    this.resourceType,
    this.receiverId,
    this.originalNotificationId,
    this.externalId,
    required this.providerId,
    required this.provider,
    required this.createdAt,
    required this.status,
  });

  factory NotificationDTO.fromJson(Map<String, dynamic> json) =>
      _$NotificationDTOFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationDTOToJson(this);
}
