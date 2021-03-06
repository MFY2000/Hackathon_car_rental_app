// ignore_for_file: file_names

import 'package:car_rental_app_hackathon/API/API_Route.dart';
import 'package:car_rental_app_hackathon/API/getApi.dart';
import 'package:car_rental_app_hackathon/Components/Custom/Button/ButtonColored.dart';
import 'package:car_rental_app_hackathon/Components/Custom/TextFeild/PasswordFeild.dart';
import 'package:car_rental_app_hackathon/Components/Custom/TextFeild/TextFeild_1.dart';
import 'package:car_rental_app_hackathon/Config/Validition.dart';

import 'package:car_rental_app_hackathon/Config/size_config.dart';
import 'package:car_rental_app_hackathon/Model/TextFeildModel.dart';
import 'package:car_rental_app_hackathon/Model/UserModel.dart';
import 'package:car_rental_app_hackathon/Pages/Home/HomeSceen.dart';
import 'package:car_rental_app_hackathon/Pages/Login/SignIn/ForgetPassword.dart';
import 'package:car_rental_app_hackathon/Pages/Login/Signup_Signin.dart';
import 'package:flutter/material.dart';

class SignInSrceen extends StatefulWidget {
  const SignInSrceen({Key? key}) : super(key: key);

  @override
  _SignInSrceenState createState() => _SignInSrceenState();
}

class _SignInSrceenState extends State<SignInSrceen> {
  late List<UserModel> userList = [];
  List<TextFeildModel> controller = [];
  bool isError = false;
  bool wait = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = [
      TextFeildModel(label: "Usernmae"),
      TextFeildModel(label: "Password")
    ];

    getData();
  }

  getData() async {
    for (var item in (await getApi(api_GET_UserDetail))) {
      userList.add(UserModel.fromJson(item));
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: wait
          ? SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: getSize(true, .1),
                    vertical: getSize(false, .05)),
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(bottom: getSize(false, .0125)),
                        child: Text(
                          "Sign In",
                          style: Theme.of(context).textTheme.headline2,
                        )),
                    TextFeild1(reference: controller[0]),
                    PasswordFeild(reference: controller[1]),
                    Container(
                        margin: EdgeInsets.only(top: getSize(false, .0125)),
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                            onTap: () {
                              goToOtherRouter(const ForgetPassword());
                            },
                            child: Text(
                              "Forget Password ?",
                              style: Theme.of(context).textTheme.bodyText1,
                            ))),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: getSize(false, .0125),
                      ),
                      child: ButtonColored(function: onSigIn, text: "Login"),
                    ),
                    const Signup_Signin(isSignIN: false),
                  ],
                ),
              ),
            )
          : Center(child: CircularProgressIndicator()),
    );
  }

  goToOtherRouter(Widget route) {
    Navigator.push(
        context, MaterialPageRoute(builder: (BuildContext context) => route));
  }

  onSiginClick() async {
    var isEmail = validtionConstantEmail(controller[0].value);
    var isPassword = validtionConstantPassword(controller[1].value);

    if (isEmail[0]) {
      setTextFeild(0, isEmail);
    }

    if (isPassword[0]) {
      setTextFeild(1, isPassword);
    }

    if (!isError) {
      setState(() {
        wait = false;
      });
      onSigIn();
    }
  }

  setTextFeild(int index, var data) {
    setState(() {
      controller[index].isError = data[0];
      controller[index].errorMessage = data[1];
      isError = data[0];
    });
  }

  onSigIn() {
    for (var item in userList) {
      if (item.uName == controller[0].value) {
        if (item.password == controller[1].value) {
          goToOtherRouter(const HomeScreen());
        }
      }
    }
  }
}
