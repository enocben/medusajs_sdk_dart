import 'package:json_annotation/json_annotation.dart';

part 'generated/price_set.g.dart';

/// A price set's data
@JsonSerializable()
class PriceSetDTO {
  /// The ID of the price set
  final String id;

  const PriceSetDTO({required this.id});

  factory PriceSetDTO.fromJson(Map<String, dynamic> json) =>
      _$PriceSetDTOFromJson(json);

  Map<String, dynamic> toJson() => _$PriceSetDTOToJson(this);
}
