import 'package:json_annotation/json_annotation.dart';

part 'generated/notification_provider.g.dart';

/// Information about the notification provider
@JsonSerializable()
class NotificationProviderDTO {
  /// The ID of the notification provider
  final String id;

  /// The handle of the notification provider
  final String handle;

  /// A user-friendly name of the notification provider
  final String name;

  /// The supported channels by the notification provider
  final List<String> channels;

  const NotificationProviderDTO({
    required this.id,
    required this.handle,
    required this.name,
    required this.channels,
  });

  factory NotificationProviderDTO.fromJson(Map<String, dynamic> json) =>
      _$NotificationProviderDTOFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationProviderDTOToJson(this);
}
