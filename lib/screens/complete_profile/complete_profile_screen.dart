import 'package:complete_e_commerce_app/screens/complete_profile/components/complete_screen_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatelessWidget {
  static const routeName = "/complete_profile";
  const CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Sign Up'),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(CupertinoIcons.back),
        ),
      ),
      body: const CompleteScreenBody(),
    );
  }
}
