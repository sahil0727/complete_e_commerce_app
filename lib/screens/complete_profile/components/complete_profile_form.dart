import 'dart:developer';

import 'package:complete_e_commerce_app/screens/OTP/otp_screen.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  late String firstName, lastName, address, phoneNumber;
  final List<String> errors = [];
  final _formKey = GlobalKey<FormState>();

  void addError({required String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({required String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            buildFirstNameFormField(),
            SizedBox(height: getProportionateScreenHeight(25)),
            buildLastNameFormField(),
            SizedBox(height: getProportionateScreenHeight(25)),
            buildPhoneNumberFormField(),
            SizedBox(height: getProportionateScreenHeight(25)),
            buildAddressFormField(),
            FormError(erorrs: errors),
            SizedBox(height: getProportionateScreenHeight(35)),
            DefaultButton(
              text: 'Continue',
              press: () {
                log("Complete profile : ${_formKey.currentState!.validate()}");
                if (_formKey.currentState!.validate()) {
                  // goto OTP Screen
                  Navigator.pushNamed(context, OTPScreen.routeName);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      autofocus: false,
      onSaved: (newValue) => address = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
        }
      },
      validator: (value) {
        if ((value == null || value.isEmpty)) {
          addError(error: kAddressNullError);
          return "";
        } else {
          return null;
        }
      },
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: 'Enter Your Address',
        labelText: 'Address',
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Location point.svg',
        ),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      autofocus: false,
      onSaved: (newValue) => phoneNumber = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
      },
      validator: (value) {
        if ((value == null || value.isEmpty)) {
          addError(error: kPhoneNumberNullError);
          return "";
        } else {
          return null;
        }
      },
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: 'Enter Your Phone Number',
        labelText: 'Phone Number',
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Phone.svg',
        ),
      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      autofocus: false,
      onSaved: (newValue) => lastName = newValue!,
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: 'Enter Last First Name',
        labelText: 'Last Name',
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/User.svg',
        ),
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      autofocus: false,
      onSaved: (newValue) => firstName = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNameNullError);
        }
      },
      validator: (value) {
        if ((value == null || value.isEmpty)) {
          addError(error: kNameNullError);
          return "";
        } else {
          return null;
        }
      },
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: 'Enter Your First Name',
        labelText: 'First Name ',
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/User.svg',
        ),
      ),
    );
  }
}
