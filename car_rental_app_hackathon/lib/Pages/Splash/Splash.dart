// ignore_for_file: file_names

import 'dart:async';

import 'package:car_rental_app_hackathon/Config/size_config.dart';
import 'package:car_rental_app_hackathon/Pages/Login/Intro/Introduction.dart';
import 'package:car_rental_app_hackathon/Pages/MainScreen.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  var _visible = true;
  bool isUserLogin = false;

  late AnimationController animationController;
  late Animation<double> animation;

  startTime() async {
    var _duration = const Duration(seconds: 5);
    isUserLogin = false; //FirebaseAuth.instance.currentUser != null;
    return Timer(_duration, navigationPage);
  }

  void navigationPage() async {
    // FirebaseAuth.instance.currentUser!

    // isUserLogin =
    //     false;  //? await getUser(FirebaseAuth.instance.currentUser!.uid) : null;
    Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext buildContext) =>
            isUserLogin ? const MainScreen() : const IntroSrceen()));
  }

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    animation = CurvedAnimation(
        parent: animationController, curve: Curves.easeInOutCubicEmphasized);

    animation.addListener(() => setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    // getProductData();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Image.asset(
                      'assets/images/from.png',
                      height: 25.0,
                      fit: BoxFit.scaleDown,
                    ))
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/logo/logo.png',
                  width: animation.value * 350,
                  height: animation.value * 350,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
