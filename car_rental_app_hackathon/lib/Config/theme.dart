import 'package:flutter/material.dart';

import 'constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData theme() {
  return ThemeData(
      scaffoldBackgroundColor: kPrimaryLightColor,
      primaryColor: kPrimaryColor,
      fontFamily: "Overlook",
      appBarTheme: appBarTheme(),
      textTheme: textTheme(),
      inputDecorationTheme: inputDecorationTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      floatingActionButtonTheme: getFloatingButton());
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: kTextColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    button: TextStyle(
      color: kPrimaryLightColor,
    ),
    headline1: headingStyle,
    headline2: TextStyle(
      color: kHeading,
      fontFamily: "Times New Roman",
      fontSize: headingfontSize,
      height: 1,
    ),
    headline3: TextStyle(
      color: khighLightColor,
      fontFamily: "Times New Roman",
      fontSize: headingfontSize - 4,
      height: 1,
    ),
    headline4: TextStyle(
      color: kPrimaryLightColor,
      fontFamily: "Times New Roman",
      fontSize: 26,
      height: 1,
    ),
    bodyText1: TextStyle(
      fontFamily: "Times New Roman",
      color: kTextColor,
      fontSize: fontSize - 2,
    ),
    bodyText2: TextStyle(
        fontFamily: "Times New Roman", color: kHeading, fontSize: fontSize),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    elevation: 0,
    iconTheme: IconThemeData(color: kSecondaryColor),
    backgroundColor: Colors.transparent,
  );
}

BoxShadow getShadow(Color colorTo) {
  return BoxShadow(
    color: colorTo.withOpacity(.5),
    spreadRadius: 1,
    blurRadius: 20,
    offset: const Offset(0, 14), // changes position of shadow
  );
}

getFloatingButton() {
  return FloatingActionButtonThemeData(backgroundColor: kPrimaryLightColor);
}

getBottomBorder() {
  return BoxDecoration(
      border: Border(
    bottom: BorderSide(width: 1, color: Colors.grey.shade600),
  ));
}

BoxDecoration BigButtonStyle = const BoxDecoration(
    color: kPrimaryColor, borderRadius: BorderRadius.all(Radius.circular(10)));

TextStyle buttonTextStyle = TextStyle(
    color: kPrimaryLightColor,
    fontSize: buttonFontsize1,
    fontWeight: FontWeight.w900);

//login text style

TextStyle dynamicTextStyle =
    const TextStyle(fontWeight: FontWeight.bold, color: kTextColor);

TextStyle secondaryTextStyle = const TextStyle(
  fontWeight: FontWeight.bold,
  color: kSecondaryColor,
);

TextStyle productCardTextStyle = const TextStyle(
    fontWeight: FontWeight.bold, fontSize: 19, color: kTextColor);

TextStyle HeaderMainHeadingTextStyle = const TextStyle(
  color: kPrimaryLightColor,
  fontSize: 19,
  fontWeight: FontWeight.bold,
  letterSpacing: 8.4,
);

TextStyle HeaderPrimaryHeadingTextStyle = const TextStyle(
  color: kPrimaryLightColor,
  fontSize: 9,
  fontWeight: FontWeight.bold,
  letterSpacing: 4,
);

TextStyle HeaderSecondaryHeadingTextStyle = const TextStyle(
  color: kPrimaryLightColor,
  fontSize: 30,
  fontWeight: FontWeight.bold,
  letterSpacing: 8.4,
);

TextStyle HeaderScrollHeadingTextStyle = const TextStyle(
  color: kPrimaryLightColor,
  fontSize: 16,
  fontWeight: FontWeight.bold,
  letterSpacing: 6.4,
);

TextStyle HeaderScrollActiveHeadingTextStyle = const TextStyle(
  color: kSecondaryColor,
  fontSize: 16,
  fontWeight: FontWeight.bold,
  letterSpacing: 6.4,
);

TextStyle ProductCardInfoTextStyle = const TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
);

TextStyle ProductCardInfoSmallTextStyle = const TextStyle(
  fontSize: 13,
  color: kSecondaryColor,
  fontWeight: FontWeight.bold,
);

TextStyle BottomCardMainHeadingStyle = const TextStyle(
  color: kPrimaryColor,
  fontSize: 18,
  fontWeight: FontWeight.bold,
  letterSpacing: 10.4,
);

TextStyle BottomCardPrimaryHeadingStyle = const TextStyle(
  color: kPrimaryColor,
  fontSize: 13,
  fontWeight: FontWeight.bold,
  letterSpacing: 10.4,
);

TextStyle ProductMainCardMainHeadingStyle = const TextStyle(
  color: kPrimaryColor,
  fontSize: 23,
  fontWeight: FontWeight.bold,
  letterSpacing: 10.4,
);

TextStyle ProductMainCardSubHeadingStyle = const TextStyle(
  color: kSecondaryColor,
  fontSize: 15,
  fontWeight: FontWeight.bold,
  letterSpacing: 10.4,
);

TextStyle ProductMainCardPriceHeadingStyle = const TextStyle(
  color: kPrimaryColor,
  fontSize: 15,
  fontWeight: FontWeight.bold,
  letterSpacing: 10.4,
);

TextStyle ProductMainCardTypeHeadingStyle = const TextStyle(
  color: kPrimaryColor,
  fontSize: 12,
  fontWeight: FontWeight.bold,
);

TextStyle ProductMainCardBottomCardMainHeadingStyle = const TextStyle(
  color: kPrimaryColor,
  fontSize: 15,
  fontWeight: FontWeight.bold,
  letterSpacing: 4.4,
);

TextStyle ProductMainCardBottomCardPrimaryHeadingStyle = const TextStyle(
  color: kPrimaryColor,
  fontSize: 13,
  fontWeight: FontWeight.bold,
  letterSpacing: 7.4,
);

BoxShadow productCardShadow = const BoxShadow(
  color: kSecondaryColor,
  offset: Offset(0.0, 0.0), //(x,y)
  blurRadius: 3.0,
  spreadRadius: 2.0,
);

BoxDecoration productCardDecoration = BoxDecoration(
  color: kPrimaryLightColor,
  borderRadius: BorderRadius.circular(20),
  boxShadow: [productCardShadow],
);

BoxDecoration CartCardDecoration = BoxDecoration(
  color: kPrimaryLightColor,
  borderRadius: BorderRadius.circular(20),
  boxShadow: [productCardShadow],
);

BoxDecoration CartButtonDecoration = BoxDecoration(
  color: kSecondaryColor,
  borderRadius: BorderRadius.circular(6.sp),
);

BoxDecoration ProductMainCardDecoration = BoxDecoration(
  color: kSecondaryColor,
  borderRadius: BorderRadius.circular(20),
  boxShadow: [productCardShadow],
);
