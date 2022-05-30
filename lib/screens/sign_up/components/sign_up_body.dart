import 'package:complete_e_commerce_app/constants.dart';
import 'package:complete_e_commerce_app/screens/sign_up/components/sign_up_form.dart';
import 'package:complete_e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import '../../../components/social_card.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Text(
                'Register Account',
                style: headlingStyle,
              ),
              const Text(
                'Complete your details or  Continue \nwith Social Media ',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.07),
              const SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.07),
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
              SizedBox(height: getProportionateScreenHeight(20)),
              const Text(
                'By Continuing your confirm that you are agree \nwith our Term and Cindition',
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
