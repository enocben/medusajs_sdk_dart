import 'package:json_annotation/json_annotation.dart';

part 'generated/currency.g.dart';

/// The currency details
@JsonSerializable()
class CurrencyDTO {
  /// The 3 character ISO code for the currency
  final String code;

  /// The symbol used to indicate the currency
  final String? symbol;

  /// The native symbol used to indicate the currency
  @JsonKey(name: 'symbol_native')
  final String? symbolNative;

  /// The name of the currency
  final String name;

  /// The number of decimal digits used for the currency
  @JsonKey(name: 'decimal_digits')
  final int? decimalDigits;

  /// The rounding used for the currency
  final int? rounding;

  const CurrencyDTO({
    required this.code,
    this.symbol,
    this.symbolNative,
    required this.name,
    this.decimalDigits,
    this.rounding,
  });

  factory CurrencyDTO.fromJson(Map<String, dynamic> json) =>
      _$CurrencyDTOFromJson(json);

  Map<String, dynamic> toJson() => _$CurrencyDTOToJson(this);
}
