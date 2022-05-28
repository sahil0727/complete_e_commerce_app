import 'package:complete_e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

import 'components/splash_screen_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String routeName = '/splash';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: SplashScreenBody(),
    );
  }
}
