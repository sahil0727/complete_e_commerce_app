import 'package:complete_e_commerce_app/screens/Details/component/rounded_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../Models/product.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class ColorsDots extends StatefulWidget {
  const ColorsDots({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;

  @override
  State<ColorsDots> createState() => _ColorsDotsState();
}

class _ColorsDotsState extends State<ColorsDots> {
  int selectedColor = 3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
            widget.product.colors.length,
            (index) => InkWell(
              onTap: () {
                setState(() {
                  selectedColor = index;
                });
              },
              child: ColorDot(
                color: widget.product.colors[index],
                isSelected: index == selectedColor ? true : false,
              ),
            ),
          ),
          const Spacer(),
          RoundedIconBtn(
            iconData: CupertinoIcons.minus,
            isOuterBorder: true,
            press: () {},
          ),
          const SizedBox(width: 15),
          RoundedIconBtn(
            iconData: CupertinoIcons.plus,
            press: () {},
            isOuterBorder: true,
          )
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = true,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.only(right: 7),
      width: getProportionateScreenWidth(40),
      height: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        // color: product.colors[0],
        shape: BoxShape.circle,
        border: Border.all(color: isSelected ? kPrimaryColor : Colors.black12),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
