import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';

part 'generated/stock_location_address.g.dart';

/// The stock location address details
@JsonSerializable()
class StockLocationAddressDTO {
  /// The ID of the address
  final String id;

  /// The first address line
  @JsonKey(name: 'address_1')
  final String address1;

  /// The second address line
  @JsonKey(name: 'address_2')
  final String? address2;

  /// The company
  final String? company;

  /// The city
  final String? city;

  /// The country code
  @JsonKey(name: 'country_code')
  final String countryCode;

  /// The phone number
  final String? phone;

  /// The province
  final String? province;

  /// The postal code
  @JsonKey(name: 'postal_code')
  final String? postalCode;

  /// Holds custom data in key-value pairs
  final Metadata? metadata;

  /// When the address was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// When the address was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  const StockLocationAddressDTO({
    required this.id,
    required this.address1,
    this.address2,
    this.company,
    this.city,
    required this.countryCode,
    this.phone,
    this.province,
    this.postalCode,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
  });

  factory StockLocationAddressDTO.fromJson(Map<String, dynamic> json) =>
      _$StockLocationAddressDTOFromJson(json);

  Map<String, dynamic> toJson() => _$StockLocationAddressDTOToJson(this);
}
