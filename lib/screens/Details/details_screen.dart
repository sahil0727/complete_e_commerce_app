import 'package:complete_e_commerce_app/Models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  static const routeName = '/details_screen';

  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}

// here made this class for pass product details
// and here we use name route so we need a argument for pass details
// that's why we create a class

class ProductDetailsArguments {
  final Product product;
  ProductDetailsArguments({required this.product});
}
