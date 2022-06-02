import 'package:complete_e_commerce_app/enums.dart';
import 'package:complete_e_commerce_app/screens/Profile/components/profile_screen_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/custom_navigation_bar.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile_screen';
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Profile'),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(CupertinoIcons.back),
        ),
      ),
      body: const ProfileScreenBody(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectMenu: MenuState.profile),
    );
  }
}
