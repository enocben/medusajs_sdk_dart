import 'package:medusajs_sdk_dart/medusajs_sdk_dart.dart';

void main() {
  final client = MedusaClient(
    baseUrl: 'https://api.medusa-test.com',
    apiKey: 'test-api-key',
  );

  print('Medusa Client initialized with baseUrl: https://api.medusa-test.com');
  print('Products resource available: ${client.products}');
}
