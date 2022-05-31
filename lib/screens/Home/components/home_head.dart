import 'package:complete_e_commerce_app/screens/Home/components/search_field.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'icon_button_with_counter.dart';

class HomeHead extends StatelessWidget {
  const HomeHead({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
          IconButtonWithCounter(
            press: () {},
            svgSrc: 'assets/icons/Cart Icon.svg',
          ),
          IconButtonWithCounter(
            press: () {},
            svgSrc: 'assets/icons/Bell.svg',
            numOfItem: 5,
          ),
        ],
      ),
    );
  }
}
