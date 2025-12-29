import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';

part 'generated/customer.g.dart';

/// Customer data
@JsonSerializable()
class CustomerDTO {
  /// The ID of the customer
  final String id;

  /// The email of the customer
  final String email;

  /// The first name of the customer
  @JsonKey(name: 'first_name')
  final String? firstName;

  /// The last name of the customer
  @JsonKey(name: 'last_name')
  final String? lastName;

  /// The phone number of the customer
  final String? phone;

  /// Whether the customer has an account
  @JsonKey(name: 'has_account')
  final bool hasAccount;

  /// Holds custom data in key-value pairs
  final Metadata metadata;

  /// When the customer was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// When the customer was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// When the customer was deleted
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  const CustomerDTO({
    required this.id,
    required this.email,
    this.firstName,
    this.lastName,
    this.phone,
    required this.hasAccount,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });

  factory CustomerDTO.fromJson(Map<String, dynamic> json) =>
      _$CustomerDTOFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerDTOToJson(this);
}
