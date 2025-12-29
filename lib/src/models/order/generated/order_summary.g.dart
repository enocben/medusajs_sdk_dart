// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../order_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderSummaryDTO _$OrderSummaryDTOFromJson(Map<String, dynamic> json) =>
    OrderSummaryDTO(
      pendingDifference: json['pending_difference'] as String,
      currentOrderTotal: json['current_order_total'] as String,
      originalOrderTotal: json['original_order_total'] as String,
      transactionTotal: json['transaction_total'] as String,
      paidTotal: json['paid_total'] as String,
      refundedTotal: json['refunded_total'] as String,
      creditLineTotal: json['credit_line_total'] as String,
      accountingTotal: json['accounting_total'] as String,
    );

Map<String, dynamic> _$OrderSummaryDTOToJson(OrderSummaryDTO instance) =>
    <String, dynamic>{
      'pending_difference': instance.pendingDifference,
      'current_order_total': instance.currentOrderTotal,
      'original_order_total': instance.originalOrderTotal,
      'transaction_total': instance.transactionTotal,
      'paid_total': instance.paidTotal,
      'refunded_total': instance.refundedTotal,
      'credit_line_total': instance.creditLineTotal,
      'accounting_total': instance.accountingTotal,
    };
