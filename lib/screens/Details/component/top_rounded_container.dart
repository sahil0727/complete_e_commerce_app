import 'package:flutter/material.dart';

import '../../../size_config.dart';

class TopRoundedContainer extends StatelessWidget {
  final Color color;
  final Widget child;

  const TopRoundedContainer({
    Key? key,
    required this.color,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: getProportionateScreenWidth(20)),
      padding: EdgeInsets.only(top: getProportionateScreenWidth(20)),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(
            getProportionateScreenWidth(40),
          ),
          topLeft: Radius.circular(
            getProportionateScreenWidth(40),
          ),
        ),
      ),
      child: child,
    );
  }
}
