import 'package:complete_e_commerce_app/Models/cart.dart';
import 'package:complete_e_commerce_app/components/default_button.dart';
import 'package:complete_e_commerce_app/constants.dart';
import 'package:complete_e_commerce_app/screens/cart/components/cart_body.dart';
import 'package:complete_e_commerce_app/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const CartBody(),
      bottomNavigationBar: const CheckOurCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(CupertinoIcons.back),
      ),
      title: Text.rich(
        TextSpan(
          children: <InlineSpan>[
            const TextSpan(
              text: 'Your Chart\n',
              style: TextStyle(color: Colors.black),
            ),
            TextSpan(
              text: '${demoCarts.length} Items',
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ),
    );
  }
}

class CheckOurCard extends StatelessWidget {
  const CheckOurCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(30),
        vertical: getProportionateScreenWidth(15),
      ),
      // height: SizeConfig.screenHeight * 0.20,
      // above height for demo
      // -> now use MainAxisSize.min property with safeArea
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -8),
            blurRadius: 20,
            color: const Color(0xffdadada).withOpacity(0.3),
          ),
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  width: getProportionateScreenWidth(40),
                  height: getProportionateScreenWidth(40),
                  decoration: BoxDecoration(
                    color: const Color(0xfff5f6f9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/receipt.svg',
                    fit: BoxFit.fill,
                  ),
                ),
                const Spacer(),
                const Text('Add voucher code'),
                const SizedBox(width: 10),
                const Icon(
                  CupertinoIcons.forward,
                  size: 13,
                  color: kTextColor,
                )
              ],
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text.rich(
                  TextSpan(
                    text: 'Total : \n',
                    children: <InlineSpan>[
                      TextSpan(
                          text: '\$320.25',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(190),
                  child: DefaultButton(
                    text: 'check Out',
                    press: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
