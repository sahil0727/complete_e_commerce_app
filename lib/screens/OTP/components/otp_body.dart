import 'package:complete_e_commerce_app/constants.dart';
import 'package:complete_e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

import 'otp_form.dart';

class OTPBody extends StatelessWidget {
  const OTPBody({Key? key}) : super(key: key);

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
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text(
                "OTP Verification",
                style: headlingStyle,
              ),
              const Text("We send your Code to +91 997877****"),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight * 0.15),
              const OTPForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              TextButton(
                onPressed: () {
                  // re send your OTP
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    const Color(0xfffef9e6),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.only(left: 8, right: 8, top: 5, bottom:5),
                  ),
                ),
                child: const Text(
                  'Re-Send OTP code',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.black54,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('This code Will expire in  '),
        TweenAnimationBuilder(
          tween: IntTween(begin: 30, end: 0),
          duration: const Duration(seconds: 30),
          builder: (context, value, child) => Text(
            "00 : $value",
            style: const TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          onEnd: () {},
          // i don't know what is use onEnd:(){}
        ),
      ],
    );
  }
}


