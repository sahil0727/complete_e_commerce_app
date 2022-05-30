import 'package:complete_e_commerce_app/screens/login_success/login_success_screen.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../forget_password/forget_password_screen.dart';

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  late List<String> erorrs = [];
  late String email, password;
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value!;
                    // log('$remember');
                  });
                },
              ),
              const Text('Remember me'),
              const Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, ForgetPasswordScreen.routeName);
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 7,vertical: 3,
                  ),
                  child: Text(
                    'Forget Password',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ),
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: Colors.black12,
                primary: kPrimaryColor,
                ),
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          FormError(erorrs: erorrs),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            text: 'Continue',
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if ((value.isNotEmpty) && erorrs.contains(kPassNullError)) {
          setState(() {
            erorrs.remove(kPassNullError);
          });
        } else if (value.length >= 8 && erorrs.contains(kShortPassError)) {
          setState(() {
            erorrs.remove(kShortPassError);
          });
        }
      },
      validator: (value) {
        if ((value == null || value.isEmpty) &&
            !erorrs.contains(kPassNullError)) {
          setState(() {
            erorrs.add(kPassNullError);
          });
          return null;
        } else if (value!.length < 8 && !erorrs.contains(kShortPassError)) {
          setState(() {
            erorrs.add(kShortPassError);
          });
          return null;
        }
        return null;
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
          setState(() {
            erorrs.add(kEmailNullError);
          });
          return null;
        } else if (!emailValidatorRegExp.hasMatch(value!) &&
            !erorrs.contains(kInvalidEmailError)) {
          setState(() {
            erorrs.add(kInvalidEmailError);
          });
          return null;
        }
        return null;
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
