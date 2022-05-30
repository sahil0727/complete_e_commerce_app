import 'package:complete_e_commerce_app/screens/OTP/otp_screen.dart';
import 'package:complete_e_commerce_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:complete_e_commerce_app/screens/forget_password/forget_password_screen.dart';
import 'package:complete_e_commerce_app/screens/login_success/login_success_screen.dart';
import 'package:complete_e_commerce_app/screens/sign_in/sign_in_screen.dart';
import 'package:complete_e_commerce_app/screens/sign_up/sign_up_screen.dart';
import 'package:complete_e_commerce_app/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

// we used name routes
// all routes will is here

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgetPasswordScreen.routeName: (context) => const ForgetPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OTPScreen.routeName: (context) => const OTPScreen(),
};
