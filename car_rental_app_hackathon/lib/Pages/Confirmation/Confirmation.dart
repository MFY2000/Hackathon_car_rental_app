// ignore_for_file: file_names

import 'package:car_rental_app_hackathon/Components/Custom/Button/ButtonColored.dart';
import 'package:car_rental_app_hackathon/Config/constants.dart';
import 'package:car_rental_app_hackathon/Config/size_config.dart';
import 'package:car_rental_app_hackathon/Pages/MainScreen.dart';
import 'package:flutter/material.dart';

class Confirmation extends StatefulWidget {
  const Confirmation({Key? key}) : super(key: key);

  @override
  _ConfirmationState createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(
              vertical: getSize(false, .025), horizontal: getSize(true, .05)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: getSize(true, .35),
              ),
              CircleAvatar(
                radius: getSize(true, .4),
                backgroundColor: kSecondaryColor,
                child: CircleAvatar(
                  radius: getSize(true, .25),
                  backgroundColor: Colors.grey.withOpacity(0.5),
                  child: Image.asset("assets/images/LIKE.png"),
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: getSize(false, .025)),
                  child: Text(
                    "Confirmation",
                    style: Theme.of(context).textTheme.headline2,
                  )),
              const Text(
                "You have successfully \n completed your payment procedure",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: getSize(false, .1),
              ),
              ButtonColored(
                function: toGo,
                text: "Back to Home",
              )
            ],
          ),
        ),
      ),
    );
  }

  toGo() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const MainScreen()));
  }
}
