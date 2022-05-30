import 'package:complete_e_commerce_app/constants.dart';
import 'package:complete_e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'complete_profile_form.dart';

class CompleteScreenBody extends StatelessWidget {
  const CompleteScreenBody({Key? key}) : super(key: key);

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
                'Complete Profile',
                style: headlingStyle,
              ),
              const Text(
                'Complete your details or continue \nwith Social Media',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              const CompleteProfileForm(),
              SizedBox(height: getProportionateScreenHeight(25)),
              const Text(
                'By Continuing your confirm that you agree \nwith our Term And Conditions',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.01),
            ],
          ),
        ),
      ),
    );
  }
}
