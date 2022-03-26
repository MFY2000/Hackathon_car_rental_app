// ignore_for_file: file_names

import 'package:car_rental_app_hackathon/Components/Custom/Button/ButtonColored.dart';
import 'package:car_rental_app_hackathon/Components/Custom/TextFeild/TextFeild_1.dart';
import 'package:car_rental_app_hackathon/Config/size_config.dart';
import 'package:car_rental_app_hackathon/Model/TextFeildModel.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextFeildModel forgetPassword = TextFeildModel(label: "OTP");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(),
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: getSize(true, .1),
                    vertical: getSize(false, .05)),
                child: Column(children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(bottom: getSize(false, .0525)),
                      child: Text(
                        "Verification Code",
                        style: Theme.of(context).textTheme.headline2,
                      )),
                  TextFeild1(reference: forgetPassword),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: getSize(false, .0125),
                    ),
                    child: ButtonColored(
                        function: firebaseSendMail, text: "Resend"),
                  ),
                ]))));
  }

  firebaseSendMail() async {
  //   final _auth = FirebaseAuth.instance;

  //   final _formkey = GlobalKey<FormState>();
  //   if (_formkey.currentState!.validate()) {
  //     await _auth
  //         .sendPasswordResetEmail(email: forgetPassword.value)
  //         .then((uid) => {
  //               Navigator.of(context).pushReplacement(MaterialPageRoute(
  //                   builder: (context) => const SignInSrceen()))
  //             })
  //         .catchError((e) {});
  //   }
  }
}
