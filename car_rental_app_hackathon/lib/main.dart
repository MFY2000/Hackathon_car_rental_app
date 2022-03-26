import 'dart:ui';

import 'package:car_rental_app_hackathon/Config/constants.dart';
import 'package:car_rental_app_hackathon/Config/theme.dart';
import 'package:car_rental_app_hackathon/Pages/Confirmation/Confirmation.dart';
import 'package:car_rental_app_hackathon/Pages/Details/SubProductsScreen.dart';
import 'package:car_rental_app_hackathon/Pages/Home/HomeSceen.dart';
import 'package:car_rental_app_hackathon/Pages/Payment/PaymentScreen.dart';
import 'package:car_rental_app_hackathon/Pages/Splash/Splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        title: 'KOLACHI',
        theme: theme(),
        home: PaymentScreen(),
        debugShowCheckedModeBanner: false,
      ),
      designSize: const Size(width, height),
    );
  }
}
