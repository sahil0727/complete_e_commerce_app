import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SelectionTitle extends StatelessWidget {
  final String text;
  final GestureTapCallback press;

  const SelectionTitle({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
              color: Colors.black,
            ),
          ),
          TextButton(
            onPressed: press,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color(0xfffef9e6),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              padding: MaterialStateProperty.all<EdgeInsets>(
                const EdgeInsets.only(left: 6, right: 6, top: 2, bottom: 2),
              ),
            ),
            child: Text(
              'See More',
              style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: kPrimaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
