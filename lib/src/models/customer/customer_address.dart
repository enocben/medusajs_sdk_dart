import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';

part 'generated/customer_address.g.dart';

/// Customer address data
@JsonSerializable()
class CustomerAddressDTO {
  /// The ID of the customer address
  final String id;

  /// The address name of the customer address
  @JsonKey(name: 'address_name')
  final String? addressName;

  /// Whether the customer address is default shipping
  @JsonKey(name: 'is_default_shipping')
  final bool isDefaultShipping;

  /// Whether the customer address is default billing
  @JsonKey(name: 'is_default_billing')
  final bool isDefaultBilling;

  /// The associated customer's ID
  @JsonKey(name: 'customer_id')
  final String customerId;

  /// The company of the customer address
  final String? company;

  /// The first name of the customer address
  @JsonKey(name: 'first_name')
  final String? firstName;

  /// The last name of the customer address
  @JsonKey(name: 'last_name')
  final String? lastName;

  /// The address 1 of the customer address
  @JsonKey(name: 'address_1')
  final String? address1;

  /// The address 2 of the customer address
  @JsonKey(name: 'address_2')
  final String? address2;

  /// The city of the customer address
  final String? city;

  /// The country code of the customer address
  @JsonKey(name: 'country_code')
  final String? countryCode;

  /// The lower-case ISO 3166-2 province of the customer address
  final String? province;

  /// The postal code of the customer address
  @JsonKey(name: 'postal_code')
  final String? postalCode;

  /// The phone of the customer address
  final String? phone;

  /// Holds custom data in key-value pairs
  final Metadata metadata;

  /// When the customer address was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// When the customer address was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  const CustomerAddressDTO({
    required this.id,
    this.addressName,
    required this.isDefaultShipping,
    required this.isDefaultBilling,
    required this.customerId,
    this.company,
    this.firstName,
    this.lastName,
    this.address1,
    this.address2,
    this.city,
    this.countryCode,
    this.province,
    this.postalCode,
    this.phone,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
  });

  factory CustomerAddressDTO.fromJson(Map<String, dynamic> json) =>
      _$CustomerAddressDTOFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerAddressDTOToJson(this);
}
