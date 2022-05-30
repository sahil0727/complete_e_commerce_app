import 'dart:developer';

import 'package:complete_e_commerce_app/components/default_button.dart';
import 'package:complete_e_commerce_app/components/form_error.dart';
import 'package:complete_e_commerce_app/components/not_account_text.dart';
import 'package:complete_e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import '../../../components/custom_suffix_icon.dart';
import '../../../constants.dart';

class ForgetPassBody extends StatefulWidget {
  const ForgetPassBody({Key? key}) : super(key: key);

  @override
  State<ForgetPassBody> createState() => _ForgetPassBodyState();
}

class _ForgetPassBodyState extends State<ForgetPassBody> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                'Forget Password',
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Please enter your Email and we will send \nyou a link to return account",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              const ForgetPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgetPassForm extends StatefulWidget {
  const ForgetPassForm({Key? key}) : super(key: key);

  @override
  State<ForgetPassForm> createState() => _ForgetPassFormState();
}

class _ForgetPassFormState extends State<ForgetPassForm> {
  List<String> erorrs = [];

  late String email;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            onSaved: (newValue) => email = newValue!,
            onChanged: (value) {
              if (value.isNotEmpty && erorrs.contains(kEmailNullError)) {
                setState(() {
                  erorrs.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  erorrs.contains(kInvalidEmailError)) {
                setState(() {
                  erorrs.remove(kInvalidEmailError);
                });
              }
            },
            validator: (value) {
              if ((value == null || value.isEmpty) &&
                  !erorrs.contains(kEmailNullError)) {
                log("if part : $value");
                setState(() {
                  erorrs.add(kEmailNullError);
                });
                return "";
              } else if (!emailValidatorRegExp.hasMatch(value!) &&
                  !erorrs.contains(kInvalidEmailError)) {
                log("Else part : $value");
                setState(() {
                  erorrs.add(kInvalidEmailError);
                });
                return "";
              } else if (value.isEmpty) {
                return '';
              } else if (!emailValidatorRegExp.hasMatch(value)) {
                return '';
              } else {
                return null;
              }
            },
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: 'Enter Your Email',
              labelText: 'Email',
              suffixIcon: CustomSuffixIcon(
                svgIcon: 'assets/icons/Mail.svg',
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(30)),
          FormError(erorrs: erorrs),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          DefaultButton(
            text: 'Continue',
            press: () {
              log('${_formKey.currentState!.validate()}');
              if (_formKey.currentState!.validate()) {
                // do any thing here
              }
            },
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          const NotAccountText(),
        ],
      ),
    );
  }
}
