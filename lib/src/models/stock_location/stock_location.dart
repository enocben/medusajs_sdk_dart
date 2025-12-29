import 'package:json_annotation/json_annotation.dart';
import '../common/metadata.dart';
import 'stock_location_address.dart';

part 'generated/stock_location.g.dart';

/// The stock location details
@JsonSerializable()
class StockLocationDTO {
  /// The ID of the stock location
  final String id;

  /// The name of the stock location
  final String name;

  /// The address of the stock location
  final StockLocationAddressDTO? address;

  /// The ID of the address
  @JsonKey(name: 'address_id')
  final String? addressId;

  /// Holds custom data in key-value pairs
  final Metadata? metadata;

  /// When the stock location was created
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// When the stock location was updated
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// When the stock location was deleted
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  const StockLocationDTO({
    required this.id,
    required this.name,
    this.address,
    this.addressId,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });

  factory StockLocationDTO.fromJson(Map<String, dynamic> json) =>
      _$StockLocationDTOFromJson(json);

  Map<String, dynamic> toJson() => _$StockLocationDTOToJson(this);
}
