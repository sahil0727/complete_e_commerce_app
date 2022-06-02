import 'package:complete_e_commerce_app/screens/Home/home_screen.dart';
import 'package:complete_e_commerce_app/screens/Profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  final MenuState selectMenu;

  const CustomBottomNavBar({
    Key? key,
    required this.selectMenu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color inActiveColor = const Color(0xffb6b6b6);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            color: const Color(0xffdadada).withOpacity(0.2),
            blurRadius: 15,
          )
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () =>
                  Navigator.pushNamed(context, HomeScreen.routeName),
              icon: SvgPicture.asset(
                'assets/icons/Shop Icon.svg',
                color: selectMenu == MenuState.home
                    ? kPrimaryColor
                    : inActiveColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/Heart Icon.svg',
                color: selectMenu == MenuState.favourite
                    ? kPrimaryColor
                    : inActiveColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/Chat bubble Icon.svg',
                color: selectMenu == MenuState.message
                    ? kPrimaryColor
                    : inActiveColor,
              ),
            ),
            IconButton(
              onPressed: () =>
                  Navigator.pushNamed(context, ProfileScreen.routeName),
              icon: SvgPicture.asset(
                'assets/icons/User Icon.svg',
                color: selectMenu == MenuState.profile
                    ? kPrimaryColor
                    : inActiveColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
