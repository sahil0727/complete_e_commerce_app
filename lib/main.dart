import 'package:complete_e_commerce_app/routs.dart';
import 'package:complete_e_commerce_app/screens/splash/splash_screen.dart';
import 'package:complete_e_commerce_app/theme.dart';
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

      initialRoute: SplashScreen.routeName,
      routes: routes,

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
    );
  }
}
