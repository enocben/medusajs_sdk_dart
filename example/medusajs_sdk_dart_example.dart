import 'package:medusajs_sdk_dart/medusajs_sdk_dart.dart';

void main() async {
  final client = MedusaClient(
    baseUrl: 'https://api.medusa-test.com',
    apiKey: 'test-api-key',
  );

  print('Medusa Client initialized with baseUrl: https://api.medusa-test.com');
  print('Products resource available: ${client.products}');

  // Example: List products
  try {
    final products = await client.products.list();
    print('Fetched ${products.count} products');
    for (var product in products.products) {
      print('Product: ${product.title}');
    }
  } catch (e) {
    print('Error fetching products: $e');
  }
}
