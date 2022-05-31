import 'dart:developer';

import 'package:complete_e_commerce_app/screens/Home/components/section_title.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SpecialOffer extends StatelessWidget {
  const SpecialOffer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectionTitle(
          press: () {
            log('press');
          },
          text: 'Special for you',
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: [
              SpecialOfferCard(
                press: () {},
                image: 'assets/images/Image Banner 2.png',
                category: 'SmartPhone',
                numOfBrand: 18,
              ),
              SpecialOfferCard(
                press: () {},
                image: 'assets/images/Image Banner 3.png',
                category: 'Fashion',
                numOfBrand: 23,
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  final String category, image;
  final int numOfBrand;
  final GestureTapCallback press;

  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrand,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(242),
        height: getProportionateScreenWidth(100),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0xff343434).withOpacity(0.4),
                      const Color(0xff343434).withOpacity(0.15),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(15),
                  vertical: getProportionateScreenWidth(10),
                ),
                child: Text.rich(
                  TextSpan(
                    style: const TextStyle(color: Colors.white),
                    children: <InlineSpan>[
                      TextSpan(
                        text: '$category\n',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenWidth(18),
                        ),
                      ),
                      TextSpan(text: '$numOfBrand Brands')
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
