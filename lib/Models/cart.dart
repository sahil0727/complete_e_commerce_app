import 'package:complete_e_commerce_app/Models/product.dart';

class Cart {
  final Product product;
  final int numOfItems;
  Cart({required this.product, required this.numOfItems});
}

List<Cart> demoCarts = [
  Cart(product: demoProduct.elementAt(0), numOfItems: 2),
  Cart(product: demoProduct.elementAt(1), numOfItems: 1),
  Cart(product: demoProduct.elementAt(3), numOfItems: 1),
];
