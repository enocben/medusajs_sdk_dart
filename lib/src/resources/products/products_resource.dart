import '../../client/http_client.dart';
import '../../models/product.dart';

class ProductsResource {
  final MedusaHttpClient _client;

  ProductsResource(this._client);

  /// Retrieves a product by its ID
  Future<Product?> retrieve(String id,
      {Map<String, dynamic>? queryParameters}) async {
    final response = await _client.get(
      '/store/products/$id',
      queryParameters: queryParameters,
    );
    if (response.data == null) return null;
    return Product.fromJson(response.data!['product']);
  }

  /// Lists products with pagination and filters
  Future<ProductListResponse> list(
      {Map<String, dynamic>? queryParameters}) async {
    final response = await _client.get(
      '/store/products',
      queryParameters: queryParameters,
    );
    return ProductListResponse.fromJson(response.data!);
  }
}
