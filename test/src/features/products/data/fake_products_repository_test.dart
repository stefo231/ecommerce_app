import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/src/features/products/data/fake_products_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('getProductList returns global list', () {
    final productRepository = FakeProductsRepository();
    expect(
      productRepository.getProductsList(),
      kTestProducts,
    );
  });
}
