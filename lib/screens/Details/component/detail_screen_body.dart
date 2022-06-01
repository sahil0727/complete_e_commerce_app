import 'package:complete_e_commerce_app/Models/product.dart';
import 'package:complete_e_commerce_app/components/default_button.dart';
import 'package:complete_e_commerce_app/screens/Details/component/product_description.dart';
import 'package:complete_e_commerce_app/screens/Details/component/product_images.dart';
import 'package:complete_e_commerce_app/screens/Details/component/top_rounded_container.dart';
import 'package:complete_e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'colors_dots.dart';

class DetailsScreenBody extends StatelessWidget {
  final Product product;

  const DetailsScreenBody({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          ProductsImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  pressOnSeeMore: () {},
                ),
                TopRoundedContainer(
                  color: const Color(0xfff6f7f9),
                  child: Column(
                    children: [
                      ColorsDots(product: product),
                      TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 0.15,
                            right: SizeConfig.screenWidth * 0.15,
                            top: getProportionateScreenWidth(10),
                            bottom: getProportionateScreenWidth(25),
                          ),
                          child: DefaultButton(
                            text: 'Add To Cart',
                            press: () {},
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
