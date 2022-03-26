import 'package:car_rental_app_hackathon/Config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const double width = 360;
const double height = 640;

const kPrimaryColor = Color.fromARGB(255, 255, 0, 0);
const kPrimaryColor2 = Color.fromARGB(255, 255, 51, 51);
const kPrimaryLightColor = Color(0xFFFFFFFF);

const kSecondaryColor2 = Color.fromARGB(255, 0, 0, 0);
const kSecondaryColor = Color.fromARGB(255, 49, 49, 49);
const kTextColor = Color.fromARGB(255, 65, 65, 65);
const kHeading = Colors.black;
const khighLightColor = Colors.red;

const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.center,
  end: Alignment.center,
  colors: [kPrimaryColor, kPrimaryColor2],
);

const kAnimationDuration = Duration(milliseconds: 200);
const defaultDuration = Duration(milliseconds: 250);

const double fontSize = 16;
const double headingfontSize = 23;
const double iconSize = 12;
const double kiconSize = 24;

const double discount = 4.5;

const List<String> kSizes = ["XS", "S", "M", "L", "XL"];
const List<Color> kColors = [
  Colors.pink,
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red
];

const TextStyle headingStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  color: kTextColor,
);

BoxShadow productCardShadow = const BoxShadow(
  color: kSecondaryColor,
  offset: Offset(0.0, 0.0), //(x,y)
  blurRadius: 3.0,
  spreadRadius: 2.0,
);

double inputHintFontsize = 12.sp;
double buttonFontsize1 = 12.sp;
double productCardTitile = 15.sp;

List product = ["Men Shoes", "Women Shoes", "Kids Shoes"];

int isActive = 0;

const String logo_small = 'assets/logo/logo_small.svg';
const String logo_medium = 'assets/logo/logo_medium.svg';
const String logo_large = 'assets/logo/logo_large.svg';
const String home_logo = 'assets/logo/logo_home.svg';
const String primary_drawer_logo = 'assets/logo/primaryDrawerLogo.svg';
const String secondary_drawer_logo = 'assets/logo/secondaryDrawerLogo.svg';

const String main_background = 'assets/backgrounds/main_background.svg';

//product images
const String c1 = "assets/images/c1.png";
const String c2 = "assets/images/c2.png";
const String c3 = "assets/images/c3.png";
const String c4 = "assets/images/c4.png";

//payment card_option
const String visa = 'assets/images/visa.png';
const String masterCard = 'assets/images/mastercard.png';
// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kShortNameError = "Name is too short (greater than 2)";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
