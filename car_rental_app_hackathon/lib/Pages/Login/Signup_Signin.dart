import 'package:car_rental_app_hackathon/Config/size_config.dart';
import 'package:car_rental_app_hackathon/Pages/Login/SignIn/SignInSrceen.dart';
import 'package:car_rental_app_hackathon/Pages/Login/SignUp/SignUpSrceen.dart';
import 'package:flutter/material.dart';

class Signup_Signin extends StatelessWidget {
  final bool isSignIN;
  const Signup_Signin({Key? key, required this.isSignIN}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: getSize(false, .03),
      ),
      padding: EdgeInsets.all(
        getSize(false, .003),
      ),
      child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isSignIN
                  ? "Already have an account ? "
                  : "Don't have an account ? ",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => isSignIN
                              ? const SignInSrceen()
                              : const SignUpSrceen()));
                },
                child: Text(isSignIN ? "Signin" : "Signup"))
          ]),
    );
  }
}
