import 'package:json_annotation/json_annotation.dart';

part 'generated/tax_provider.g.dart';

/// The tax provider details
@JsonSerializable()
class TaxProviderDTO {
  /// The ID of the tax provider
  final String id;

  /// Whether the tax provider is enabled
  @JsonKey(name: 'is_enabled')
  final bool isEnabled;

  const TaxProviderDTO({required this.id, required this.isEnabled});

  factory TaxProviderDTO.fromJson(Map<String, dynamic> json) =>
      _$TaxProviderDTOFromJson(json);

  Map<String, dynamic> toJson() => _$TaxProviderDTOToJson(this);
}
