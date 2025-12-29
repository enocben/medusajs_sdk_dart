import 'package:json_annotation/json_annotation.dart';

part 'generated/money.g.dart';

/// Represents a monetary value with currency
/// Used for prices, totals, and other monetary amounts
@JsonSerializable()
class Money {
  /// The amount as a string to preserve precision
  /// Medusa uses BigNumber which we represent as String in Dart
  final String amount;

  /// The currency code (e.g., 'USD', 'EUR')
  final String currencyCode;

  const Money({required this.amount, required this.currencyCode});

  factory Money.fromJson(Map<String, dynamic> json) => _$MoneyFromJson(json);

  Map<String, dynamic> toJson() => _$MoneyToJson(this);

  @override
  String toString() => '$amount $currencyCode';
}

/// Type alias for BigNumber values from Medusa
/// Represented as String to preserve precision
typedef BigNumberValue = String;

/// Type alias for raw BigNumber values
typedef BigNumberRawValue = Map<String, dynamic>;
