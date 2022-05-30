import 'package:complete_e_commerce_app/screens/sign_in/components/sign_form.dart';
import 'package:complete_e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import '../../../components/not_account_text.dart';
import '../../../components/social_card.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: SizeConfig.screenHeight*0.04
                ),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Sign in with your email and password \nor continue with social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight*0.08),
                const SignForm(),
                SizedBox(height: SizeConfig.screenHeight*0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      press: () {},
                      icon: 'assets/icons/google-icon.svg',
                    ),
                    SocialCard(
                      press: () {},
                      icon: 'assets/icons/facebook-2.svg',
                    ),
                    SocialCard(
                      press: () {},
                      icon: 'assets/icons/twitter.svg',
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20)
                ),
                const NotAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


