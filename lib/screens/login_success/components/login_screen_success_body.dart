import 'package:complete_e_commerce_app/components/default_button.dart';
import 'package:complete_e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

class LoginScreenSuccessBody extends StatelessWidget {
  const LoginScreenSuccessBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          Image.asset(
            'assets/images/success.png',
            height: SizeConfig.screenHeight * 0.4,
          ),
          Text(
            'Login Success',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: getProportionateScreenWidth(30),
              color: Colors.black,
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          const Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: DefaultButton(
              text: 'Back to Home',
              press: () {},
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
