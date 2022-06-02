import 'package:flutter/material.dart';

import '../../../Models/cart.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class CartItemCard extends StatelessWidget {
  final Cart cart;
  const CartItemCard({
    Key? key,
    required this.cart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0xfff5f6f9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(10)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
              maxLines: 2,
            ),
            Text.rich(
              TextSpan(
                text: '\$${cart.product.price}',
                style: const TextStyle(color: kPrimaryColor),
                children: <InlineSpan>[
                  TextSpan(
                    text: ' x${cart.numOfItems}',
                    style: const TextStyle(color: kPrimaryColor),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
