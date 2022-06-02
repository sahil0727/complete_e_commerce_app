import 'package:complete_e_commerce_app/components/custom_navigation_bar.dart';
import 'package:complete_e_commerce_app/enums.dart';
import 'package:complete_e_commerce_app/screens/Home/components/home_screen_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeScreenBody(),
      bottomNavigationBar: CustomBottomNavBar(selectMenu: MenuState.home),
    );
  }
}
