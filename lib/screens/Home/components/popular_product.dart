import 'dart:developer';

import 'package:complete_e_commerce_app/screens/Details/details_screen.dart';
import 'package:complete_e_commerce_app/screens/Home/components/product_card.dart';
import 'package:complete_e_commerce_app/screens/Home/components/section_title.dart';
import 'package:flutter/material.dart';

import '../../../Models/product.dart';
import '../../../size_config.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectionTitle(
          text: 'Popular Product',
          press: () {},
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                demoProduct.length,
                (index) {
                  if (demoProduct.elementAt(index).isPopular) {
                    return ProductCard(
                      product: demoProduct[index],
                      press: () {
                        log(demoProduct.elementAt(index).id.toString());
                        Navigator.pushNamed(
                          context,
                          DetailsScreen.routeName,
                          arguments: ProductDetailsArguments(
                            product: demoProduct.elementAt(index),
                          ),
                        );
                      },
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}
