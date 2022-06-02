import 'dart:developer';
import 'package:complete_e_commerce_app/Models/cart.dart';
import 'package:complete_e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'cart_item_cart.dart';

class CartBody extends StatefulWidget {
  const CartBody({Key? key}) : super(key: key);

  @override
  State<CartBody> createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Dismissible(
              key: Key("${demoCarts[index].product.id}"),
              // key must be unique so i used a product id which is a unique
              direction: DismissDirection.endToStart,
              background: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color(0xffffe6e6),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    const Spacer(),
                    SvgPicture.asset('assets/icons/Trash.svg'),
                  ],
                ),
              ),
              // below code is remove card from widget tree
              onDismissed: (direction) {
                log(direction.toString());
                setState(() {
                  demoCarts.removeAt(index);
                });
              },
              child: CartItemCard(
                cart: demoCarts[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
