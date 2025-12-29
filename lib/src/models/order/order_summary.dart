import 'package:json_annotation/json_annotation.dart';

part 'generated/order_summary.g.dart';

/// The order summary details
@JsonSerializable()
class OrderSummaryDTO {
  /// The pending difference
  @JsonKey(name: 'pending_difference')
  final String pendingDifference;

  /// The current order total
  @JsonKey(name: 'current_order_total')
  final String currentOrderTotal;

  /// The original order total
  @JsonKey(name: 'original_order_total')
  final String originalOrderTotal;

  /// The transaction total
  @JsonKey(name: 'transaction_total')
  final String transactionTotal;

  /// The paid total
  @JsonKey(name: 'paid_total')
  final String paidTotal;

  /// The refunded total
  @JsonKey(name: 'refunded_total')
  final String refundedTotal;

  /// The credit line total
  @JsonKey(name: 'credit_line_total')
  final String creditLineTotal;

  /// The accounting total
  @JsonKey(name: 'accounting_total')
  final String accountingTotal;

  const OrderSummaryDTO({
    required this.pendingDifference,
    required this.currentOrderTotal,
    required this.originalOrderTotal,
    required this.transactionTotal,
    required this.paidTotal,
    required this.refundedTotal,
    required this.creditLineTotal,
    required this.accountingTotal,
  });

  factory OrderSummaryDTO.fromJson(Map<String, dynamic> json) =>
      _$OrderSummaryDTOFromJson(json);

  Map<String, dynamic> toJson() => _$OrderSummaryDTOToJson(this);
}
