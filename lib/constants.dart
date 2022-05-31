import 'size_config.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFFFFA53E),
    Color(0xFFFF7643),
  ],
);

const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xff757575);
const kAnimationDuration = Duration(milliseconds: 250);

final headlingStyle = TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.black,
  fontSize: getProportionateScreenWidth(28),
  height: 1.5,
);
// form Error

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-z0-9]+\.[a-zA-z0-9]");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNameNullError = 'Please Enter Your Name';
const String kPhoneNumberNullError = 'Please Enter Your Phone Number';
const String kAddressNullError = 'Please Enter Your Address';

// inpute decoration
final otpInputDecoration = InputDecoration(
  counterText: "",
  // for hide bottom text counter
  contentPadding: EdgeInsets.symmetric(
    vertical: getProportionateScreenWidth(15),
  ),
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  border: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
  borderRadius: BorderRadius.circular(15),
  borderSide: const BorderSide(color: kPrimaryColor),
);
}
