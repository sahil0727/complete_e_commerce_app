import 'package:complete_e_commerce_app/constants.dart';
import 'package:complete_e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

class OTPBody extends StatelessWidget {
  const OTPBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            Text(
              "OTP Verification",
              style: headlingStyle,
            ),
            const Text("We send your Code to +91 997877****"),
            buildTimer(),
            const OTPForm(),
          ],
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

class OTPForm extends StatelessWidget {
  const OTPForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        children: [
          SizedBox(
            width: getProportionateScreenWidth(60),
            child: TextFormField(
              style: const TextStyle(fontSize: 24),
              decoration: otpInputDecoration,
            ),
          )
        ],
      ),
    );
  }
}
