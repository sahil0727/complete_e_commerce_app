import 'package:flutter/material.dart';

import '../../../size_config.dart';

class RoundedIconBtn extends StatelessWidget {
  final IconData iconData;
  final GestureTapCallback press;
  final bool isOuterBorder;
  const RoundedIconBtn({
    Key? key,
    required this.iconData,
    required this.press,
    this.isOuterBorder = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(40),
      height: getProportionateScreenHeight(40),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(
                color: isOuterBorder ? Colors.black26 : Colors.transparent),
          ),
        ),
        child: Center(
          child: Icon(
            iconData,
            color: Colors.black38,
          ),
        ),
        onPressed: press,
      ),
    );
  }
}
