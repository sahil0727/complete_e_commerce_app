import 'dart:developer';

import 'package:complete_e_commerce_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> erorrs = [];
  String? email;
  final password = TextEditingController();
  final conformPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: getProportionateScreenWidth(30)),
            buildPasswordFormField(),
            SizedBox(height: getProportionateScreenWidth(30)),
            buildConformPasswordFormField(),
            SizedBox(height: getProportionateScreenWidth(40)),
            FormError(erorrs: erorrs),
            DefaultButton(
                text: 'Continue',
                press: () {
                  log('${_formKey.currentState!.validate()}');
                  if (_formKey.currentState!.validate()) {
                    // go to complete profile page
                    Navigator.pushNamed(
                        context, CompleteProfileScreen.routeName);
                  }
                }),
          ],
        ),
      ),
    );
  }

  TextFormField buildConformPasswordFormField() {
    return TextFormField(
      autofocus: false,
      controller: conformPassword,
      // onSaved: (newValue) => conformPassword = newValue,
      onChanged: (value) {
        if (password.text == conformPassword.text) {
          setState(() {
            erorrs.remove(kMatchPassError);
          });
        }
        // log('con. password : ${conformPassword.text}');
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '';
        } else if ((password.text != conformPassword.text) &&
            !erorrs.contains(kMatchPassError)) {
          setState(() {
            erorrs.add(kMatchPassError);
          });
          return '';
        } else if (password.text != conformPassword.text) {
          return '';
        } else {
          return null;
        }
      },
      obscureText: true,
      decoration: const InputDecoration(
        hintText: 'Conform password',
        labelText: 'Re-Enter Your Password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Lock.svg',
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      autofocus: false,
      controller: password,
      // onSaved: (newValue) => password = newValue!,
      // after using controller don't use onSaved:(value){}
      onChanged: (value) {
        if ((value.isNotEmpty) && erorrs.contains(kPassNullError)) {
          setState(() {
            erorrs.remove(kPassNullError);
          });
        } else if (value.length >= 8 && erorrs.contains(kShortPassError)) {
          setState(() {
            erorrs.remove(kShortPassError);
          });
        } else if (password.text == conformPassword.text) {
          setState(() {
            erorrs.remove(kMatchPassError);
          });
        }
        // log('password : $password');
        // password = value;
      },
      validator: (value) {
        if ((value == null || value.isEmpty) &&
            !erorrs.contains(kPassNullError)) {
          setState(() {
            erorrs.add(kPassNullError);
          });
          return '';
        } else if (value!.length < 8 && !erorrs.contains(kShortPassError)) {
          setState(() {
            erorrs.add(kShortPassError);
          });
          return '';
        } else if (value.length < 8) {
          return '';
        } else if (value.isEmpty) {
          return '';
        } else {
          return null;
        }
      },
      obscureText: true,
      decoration: const InputDecoration(
        hintText: 'Enter Your password',
        labelText: 'Password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Lock.svg',
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      autofocus: false,
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
        // log('email : $value');
      },
      validator: (value) {
        if ((value == null || value.isEmpty) &&
            !erorrs.contains(kEmailNullError)) {
          setState(() {
            erorrs.add(kEmailNullError);
          });
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value!) &&
            !erorrs.contains(kInvalidEmailError)) {
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
    );
  }
}
