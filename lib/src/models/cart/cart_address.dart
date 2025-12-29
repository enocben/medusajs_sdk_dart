import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';

part 'generated/cart_address.g.dart';

/// The cart address details
@JsonSerializable()
class CartAddressDTO {
  /// The ID of the address
  final String id;

  /// The customer ID of the address
  @JsonKey(name: 'customer_id')
  final String? customerId;

  /// The first name of the address
  @JsonKey(name: 'first_name')
  final String? firstName;

  /// The last name of the address
  @JsonKey(name: 'last_name')
  final String? lastName;

  /// The phone number of the address
  final String? phone;

  /// The company of the address
  final String? company;

  /// The first address line of the address
  @JsonKey(name: 'address_1')
  final String? address1;

  /// The second address line of the address
  @JsonKey(name: 'address_2')
  final String? address2;

  /// The city of the address
  final String? city;

  /// The country code of the address
  @JsonKey(name: 'country_code')
  final String? countryCode;

  /// The lower-case ISO 3166-2 province/state of the address
  final String? province;

  /// The postal code of the address
  @JsonKey(name: 'postal_code')
  final String? postalCode;

  /// Holds custom data in key-value pairs
  final Metadata metadata;

  /// When the address was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// When the address was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  const CartAddressDTO({
    required this.id,
    this.customerId,
    this.firstName,
    this.lastName,
    this.phone,
    this.company,
    this.address1,
    this.address2,
    this.city,
    this.countryCode,
    this.province,
    this.postalCode,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
  });

  factory CartAddressDTO.fromJson(Map<String, dynamic> json) =>
      _$CartAddressDTOFromJson(json);

  Map<String, dynamic> toJson() => _$CartAddressDTOToJson(this);
}
