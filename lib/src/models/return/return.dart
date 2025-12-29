import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';
import '../common/money.dart';
import 'return_item.dart';

part 'generated/return.g.dart';

/// The return's status
enum ReturnStatus {
  @JsonValue('requested')
  requested,
  @JsonValue('received')
  received,
  @JsonValue('partially_received')
  partiallyReceived,
  @JsonValue('canceled')
  canceled,
}

/// The return details
@JsonSerializable()
class ReturnDTO {
  /// The ID of the return
  final String id;

  /// The status of the return
  final ReturnStatus status;

  /// The refund amount of the return
  @JsonKey(name: 'refund_amount')
  final BigNumberValue? refundAmount;

  /// The associated order's ID
  @JsonKey(name: 'order_id')
  final String orderId;

  /// The items of the return
  final List<ReturnItemDTO>? items;

  /// The return's display ID
  @JsonKey(name: 'display_id')
  final int displayId;

  /// The ID of the location to return the items to
  @JsonKey(name: 'location_id')
  final String? locationId;

  /// Whether the customer should receive notifications
  @JsonKey(name: 'no_notification')
  final bool? noNotification;

  /// The ID of the user that created the return
  @JsonKey(name: 'created_by')
  final String? createdBy;

  /// Holds custom data in key-value pairs
  final Metadata? metadata;

  /// When the return was requested
  @JsonKey(name: 'requested_at')
  final DateTime? requestedAt;

  /// When the return was received
  @JsonKey(name: 'received_at')
  final DateTime? receivedAt;

  /// When the return was canceled
  @JsonKey(name: 'canceled_at')
  final DateTime? canceledAt;

  /// When the return was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// When the return was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  const ReturnDTO({
    required this.id,
    required this.status,
    this.refundAmount,
    required this.orderId,
    this.items,
    required this.displayId,
    this.locationId,
    this.noNotification,
    this.createdBy,
    this.metadata,
    this.requestedAt,
    this.receivedAt,
    this.canceledAt,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ReturnDTO.fromJson(Map<String, dynamic> json) =>
      _$ReturnDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ReturnDTOToJson(this);
}
