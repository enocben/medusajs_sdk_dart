import 'package:json_annotation/json_annotation.dart';
import 'price.dart';

part 'generated/price_list.g.dart';

/// The price list's status
enum PriceListStatus {
  @JsonValue('active')
  active,
  @JsonValue('draft')
  draft,
}

/// The price list's type
/// "sale" - The price list's prices are used for a sale
/// "override" - The price list's prices override original prices
enum PriceListType {
  @JsonValue('sale')
  sale,
  @JsonValue('override')
  override,
}

/// A price list's details
@JsonSerializable()
class PriceListDTO {
  /// The price list's ID
  final String id;

  /// The price list's title
  final String? title;

  /// The price list's description
  final String? description;

  /// The price list is enabled starting from this date
  @JsonKey(name: 'starts_at')
  final String? startsAt;

  /// The price list's status
  final PriceListStatus? status;

  /// The price list's type
  final PriceListType? type;

  /// The price list expires after this date
  @JsonKey(name: 'ends_at')
  final String? endsAt;

  /// The number of rules associated with this price list
  @JsonKey(name: 'rules_count')
  final int? rulesCount;

  /// The associated price list prices
  final List<PriceDTO>? prices;

  const PriceListDTO({
    required this.id,
    this.title,
    this.description,
    this.startsAt,
    this.status,
    this.type,
    this.endsAt,
    this.rulesCount,
    this.prices,
  });

  factory PriceListDTO.fromJson(Map<String, dynamic> json) =>
      _$PriceListDTOFromJson(json);

  Map<String, dynamic> toJson() => _$PriceListDTOToJson(this);
}
