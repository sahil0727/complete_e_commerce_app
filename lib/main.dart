import 'package:complete_e_commerce_app/screens/Details/details_screen.dart';
import 'package:complete_e_commerce_app/screens/Home/home_screen.dart';
import 'package:complete_e_commerce_app/screens/OTP/otp_screen.dart';
import 'package:complete_e_commerce_app/screens/Profile/profile_screen.dart';
import 'package:complete_e_commerce_app/screens/cart/cart_screen.dart';
import 'package:complete_e_commerce_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:complete_e_commerce_app/screens/forget_password/forget_password_screen.dart';
import 'package:complete_e_commerce_app/screens/login_success/login_success_screen.dart';
import 'package:complete_e_commerce_app/screens/sign_in/sign_in_screen.dart';
import 'package:complete_e_commerce_app/screens/sign_up/sign_up_screen.dart';
import 'package:complete_e_commerce_app/screens/splash/splash_screen.dart';
import 'package:complete_e_commerce_app/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xyron',
      theme: theme(),
      // home: const SplashScreen(),
      // above home : SplashScreen(),  not used because we used navigator

      // initialRoute: SplashScreen.routeName,
      // routes: routes,

      /* beloved code is used for navigate as cupertinoRoute  also
       we don't need routes: routes as above mention
       */

      // onGenerateRoute: (RouteSettings settings) {
      //   switch (settings.name) {
      //     case '/splash': /* SplashScreen.routeName */
      //       return CupertinoPageRoute(
      //           builder: (_) => const SplashScreen(), settings: settings);
      //     case SignInScreen.routeName:
      //       return CupertinoPageRoute(
      //           builder: (_) => const SignInScreen(), settings: settings);
      //     default:
      //       return CupertinoPageRoute(
      //           builder: (_) => const SplashScreen(), settings: settings);
      //   }
      // },

      initialRoute: SplashScreen.routeName,
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case SplashScreen.routeName:
            return CupertinoPageRoute(
                builder: (_) => const SplashScreen(), settings: settings);
          case SignInScreen.routeName:
            return CupertinoPageRoute(
                builder: (_) => const SignInScreen(), settings: settings);
          case ForgetPasswordScreen.routeName:
            return CupertinoPageRoute(
                builder: (_) => const ForgetPasswordScreen(),
                settings: settings);
          case LoginSuccessScreen.routeName:
            return CupertinoPageRoute(
                builder: (_) => const LoginSuccessScreen(), settings: settings);
          case SignUpScreen.routeName:
            return CupertinoPageRoute(
                builder: (_) => const SignUpScreen(), settings: settings);
          case CompleteProfileScreen.routeName:
            return CupertinoPageRoute(
                builder: (_) => const CompleteProfileScreen(),
                settings: settings);
          case OTPScreen.routeName:
            return CupertinoPageRoute(
                builder: (_) => const OTPScreen(), settings: settings);
          case HomeScreen.routeName:
            return CupertinoPageRoute(
                builder: (_) => const HomeScreen(), settings: settings);
          case DetailsScreen.routeName:
            return CupertinoPageRoute(
                builder: (_) => const DetailsScreen(), settings: settings);

          case CartScreen.routeName:
            return CupertinoPageRoute(
                builder: (_) => const CartScreen(), settings: settings);

          case ProfileScreen.routeName:
            return CupertinoPageRoute(
                builder: (_) => const ProfileScreen(), settings: settings);
          default:
            return CupertinoPageRoute(
                builder: (_) => const SplashScreen(), settings: settings);
        }
      },
    );
  }
}
