import 'package:complete_e_commerce_app/screens/Profile/components/profile_menu.dart';
import 'package:complete_e_commerce_app/screens/Profile/components/profile_pic.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const ProfilePic(),
          const SizedBox(height: 20),
          ProfileMenu(
            press: () {},
            icon: 'assets/icons/User Icon.svg',
            text: 'My Account',
          ),
          ProfileMenu(
            press: () {},
            icon: 'assets/icons/Bell.svg',
            text: 'Notification',
          ),
          ProfileMenu(
            press: () {},
            icon: 'assets/icons/ios_settings.svg',
            text: 'Settings',
          ),
          ProfileMenu(
            press: () {},
            icon: 'assets/icons/Question mark.svg',
            text: 'Help Center',
          ),
          ProfileMenu(
            press: () {},
            icon: 'assets/icons/Log out.svg',
            text: 'Log out',
          ),
        ],
      ),
    );
  }
}
