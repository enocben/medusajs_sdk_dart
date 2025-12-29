import 'http_client.dart';
import '../resources/products/products_resource.dart';
import '../resources/carts/carts_resource.dart';
import '../resources/customers/customers_resource.dart';
import '../resources/auth/auth_resource.dart';

class MedusaClient {
  final MedusaHttpClient _httpClient;

  late final ProductsResource products;
  late final CartsResource carts;
  late final CustomersResource customers;
  late final AuthResource auth;

  MedusaClient({
    required String baseUrl,
    String? apiKey,
    Map<String, dynamic>? headers,
    Duration? connectTimeout,
    Duration? receiveTimeout,
  }) : _httpClient = MedusaHttpClient(
          baseUrl: baseUrl,
          apiKey: apiKey,
          headers: headers,
          connectTimeout: connectTimeout,
          receiveTimeout: receiveTimeout,
        ) {
    products = ProductsResource(_httpClient);
    carts = CartsResource(_httpClient);
    customers = CustomersResource(_httpClient);
    auth = AuthResource(_httpClient);
  }
}
