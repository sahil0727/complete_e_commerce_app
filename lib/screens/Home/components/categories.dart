import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../size_config.dart';

class Categories extends StatelessWidget {
  Categories({Key? key}) : super(key: key);

  final List<Map<String, String>> categories = [
    {
      "icon": "assets/icons/Flash Icon.svg",
      "text": "Flash Deal",
    },
    {
      "icon": "assets/icons/Bill Icon.svg",
      "text": "Bill",
    },
    {
      "icon": "assets/icons/Game Icon.svg",
      "text": "Game",
    },
    {
      "icon": "assets/icons/Gift Icon.svg",
      "text": "Daily Gift",
    },
    {
      "icon": "assets/icons/Discover.svg",
      "text": "More",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(
            categories.length,
            (index) => CategoryCard(
              icon: categories.elementAt(index)['icon']!,
              text: categories.elementAt(index)['text']!,
              press: () {
                // log(categories.elementAt(index)['text']!);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                decoration: BoxDecoration(
                  color: const Color(0xffffecdf),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(icon),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              text,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
