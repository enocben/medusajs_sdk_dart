import 'package:json_annotation/json_annotation.dart';

part 'generated/pagination.g.dart';

/// Generic paginated response wrapper
/// Used for list endpoints that return paginated data
@JsonSerializable(genericArgumentFactories: true)
class PaginatedResponse<T> {
  /// The list of items in this page
  final List<T> items;

  /// Total count of items available
  final int count;

  /// Number of items skipped
  final int offset;

  /// Maximum number of items per page
  final int limit;

  const PaginatedResponse({
    required this.items,
    required this.count,
    required this.offset,
    required this.limit,
  });

  factory PaginatedResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$PaginatedResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$PaginatedResponseToJson(this, toJsonT);

  /// Whether there are more items available
  bool get hasMore => offset + items.length < count;

  /// Current page number (1-indexed)
  int get currentPage => (offset ~/ limit) + 1;

  /// Total number of pages
  int get totalPages => (count / limit).ceil();
}
