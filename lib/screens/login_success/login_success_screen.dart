import 'package:flutter/material.dart';

import 'components/login_screen_success_body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static const String routeName = '/login_success';
  const LoginSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Text('login Success'),
        centerTitle: true,
      ),
      body:  const LoginScreenSuccessBody(),
    );
  }
}


