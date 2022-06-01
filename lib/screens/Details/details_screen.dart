import 'package:complete_e_commerce_app/Models/product.dart';
import 'package:complete_e_commerce_app/screens/Details/component/detail_screen_body.dart';
import 'package:flutter/material.dart';
import 'component/custom_appbar.dart';

class DetailsScreen extends StatelessWidget {
  static const routeName = '/details';

  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;

    // here argument is object of ProductDetails Arguments class
    // and receive data from Navigator.pushName(...)
    return Scaffold(
      backgroundColor: const Color(0xfff5f6f9),
      appBar: PreferredSize(
        child: CustomAppBar(rating: arguments.product.rating),
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
      ),
      body: DetailsScreenBody(product: arguments.product),
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
