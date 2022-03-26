// // ignore_for_file: file_names

// import 'dart:convert';

// import 'package:car_rental_app_hackathon/API/API_Route.dart';
// import 'package:car_rental_app_hackathon/API/PostAPI.dart';
// import 'package:car_rental_app_hackathon/Components/Custom/Alert/AlertBox1.dart';
// import 'package:car_rental_app_hackathon/Components/Custom/Button/ButtonColored.dart';
// import 'package:car_rental_app_hackathon/Components/Custom/Function/FunctionFactory.dart';
// import 'package:car_rental_app_hackathon/Components/Custom/TextFeild/PasswordFeild.dart';
// import 'package:car_rental_app_hackathon/Components/Custom/TextFeild/TextFeild_1.dart';
// import 'package:car_rental_app_hackathon/Config/Validition.dart';
// import 'package:car_rental_app_hackathon/Config/size_config.dart';
// import 'package:car_rental_app_hackathon/Model/ModelFactory.dart';
// import 'package:car_rental_app_hackathon/Model/TextFeildModel.dart';
// import 'package:car_rental_app_hackathon/Pages/Login/SignIn/SignUpSrceen.dart';
// import 'package:car_rental_app_hackathon/Pages/Login/SocialMeida/SocialMedia.dart';
// import 'package:car_rental_app_hackathon/Pages/MainScreen.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class SignUpSrceen extends StatefulWidget {
//   const SignUpSrceen({Key? key}) : super(key: key);

//   @override
//   _SignUpSrceenState createState() => _SignUpSrceenState();
// }

// class _SignUpSrceenState extends State<SignUpSrceen> {
//   List<TextFeildModel> controller = [];

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     controller = [
//       TextFeildModel(label: "Name"),
//       TextFeildModel(label: "Email"),
//       TextFeildModel(label: "Password")
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(),
//       body: SingleChildScrollView(
//         child: Container(
//           padding: EdgeInsets.symmetric(
//               horizontal: getSize(true, .1), vertical: getSize(false, .05)),
//           child: Column(
//             children: [
//               Container(
//                   alignment: Alignment.centerLeft,
//                   margin: EdgeInsets.only(bottom: getSize(false, .0125)),
//                   child: Text(
//                     "Signup",
//                     style: Theme.of(context).textTheme.headline2,
//                   )),
//               TextFeild1(reference: controller[0]),
//               TextFeild1(reference: controller[1]),
//               PasswordFeild(reference: controller[2]),
//               Padding(
//                 padding: EdgeInsets.symmetric(vertical: getSize(false, .0125)),
//                 child: ButtonColored(function: onSigupClick, text: "Register"),
//               ),
//               const SocialMedia(
//                 isSignIN: true,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   onSigupClick() {
//     bool isError = false;
//     var isName = validtionConstantName(controller[0].value);
//     var isEmail = validtionConstantEmail(controller[1].value);
//     var isPassword = validtionConstantPassword(controller[2].value);

//     if (isName[0]) {
//       setState(() {
//         controller[0].isError = isName[0];
//         controller[0].errorMessage = isName[1];
//         isError = isName[0];
//       });
//     }

//     if (isEmail[0]) {
//       setState(() {
//         controller[1].isError = isEmail[0];
//         controller[1].errorMessage = isEmail[1];
//         isError = isEmail[0];
//       });
//     }

//     if (isPassword[0]) {
//       setState(() {
//         controller[2].isError = isPassword[0];
//         controller[2].errorMessage = isPassword[1];
//         isError = isPassword[0];
//       });
//     }

//     if (!isError) {
//       onSigUp();
//     }
//   }

//   onSigUp() async {
//     try {
//       UserCredential userCredential = await FirebaseAuth.instance
//           .createUserWithEmailAndPassword(
//               email: controller[1].value, password: controller[2].value);

//       var data = jsonEncode({
//         "username": controller[0].value,
//         "email": controller[1].value,
//         "uid": userCredential.user!.uid,
//       });

//       createNewUder(data);
//       Navigator.pushAndRemoveUntil(
//           context,
//           MaterialPageRoute(
//               builder: (BuildContext context) => const SignUpSrceen()),
//           (route) => false); //(user: userCredential.user!)));

//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'weak-password') {
//         alertBox1(
//             context, "weak-password", "The password provided is too weak.");
//       } else if (e.code == 'email-already-in-use') {
//         alertBox1(context, "email-already-in-use",
//             "The account already exists for that email.");
//       }
//     } catch (e) {
//       print(e);
//     }
//   }
// }

// ignore_for_file: file_names

import 'package:car_rental_app_hackathon/Components/Custom/Button/ButtonColored.dart';
import 'package:car_rental_app_hackathon/Components/Custom/TextFeild/PasswordFeild.dart';
import 'package:car_rental_app_hackathon/Components/Custom/TextFeild/TextFeild_1.dart';

import 'package:car_rental_app_hackathon/Config/size_config.dart';
import 'package:car_rental_app_hackathon/Model/TextFeildModel.dart';
import 'package:car_rental_app_hackathon/Pages/Login/SignIn/SignInSrceen.dart';
import 'package:car_rental_app_hackathon/Pages/Login/Signup_Signin.dart';
import 'package:flutter/material.dart';

class SignUpSrceen extends StatefulWidget {
  const SignUpSrceen({Key? key}) : super(key: key);

  @override
  _SignUpSrceenState createState() => _SignUpSrceenState();
}

class _SignUpSrceenState extends State<SignUpSrceen> {
  List<TextFeildModel> controller = [];
  bool isError = false;
  bool wait = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = [
      TextFeildModel(label: "Name"),
      TextFeildModel(label: "Password"),
      TextFeildModel(label: "Email"),
      TextFeildModel(label: "Contact Number"),
      TextFeildModel(label: "Address"),
    ];
  }

  @override
  Widget build(BuildContext context) {
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
                          "Sign up",
                          style: Theme.of(context).textTheme.headline2,
                        )),
                    TextFeild1(reference: controller[0]),
                    PasswordFeild(reference: controller[1]),
                    TextFeild1(reference: controller[2]),
                    TextFeild1(reference: controller[3]),
                    TextFeild1(reference: controller[4]),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: getSize(false, .0125),
                      ),
                      child: ButtonColored(function: () {}, text: "Sign up"),
                    ),
                    const Signup_Signin(isSignIN: true),
                  ],
                ),
              ),
            )
          : Center(child: CircularProgressIndicator()),
    );
  }

  // onSiginClick() async {
  //   var isEmail = validtionConstantEmail(controller[0].value);
  //   var isPassword = validtionConstantPassword(controller[1].value);

  //   if (isEmail[0]) {
  //     setTextFeild(0, isEmail);
  //   }

  //   if (isPassword[0]) {
  //     setTextFeild(1, isPassword);
  //   }

  //   if (!isError) {
  //     setState(() {
  //       wait = false;
  //     });
  //     onSigIn();
  //   }
  // }

  // setTextFeild(int index, var data) {
  //   setState(() {
  //     controller[index].isError = data[0];
  //     controller[index].errorMessage = data[1];
  //     isError = data[0];
  //   });
  // }

  // onSigIn() async {
  //   try {
  //     UserCredential userCredential = await FirebaseAuth.instance
  //         .signInWithEmailAndPassword(
  //             email: controller[0].value, password: controller[1].value);

  //     // UserInfoModel.thirdInfo(userCredential.user!.uid);

  //     await getUser(userCredential.user!.uid);

  //     Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(
  //             builder: (BuildContext context) =>
  //                 MainScreen())); // HomeScreen(user: userCredential.user!)));

  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'user-not-found') {
  //       alertBox1(context, "user Not Found", 'No user found for that email.');
  //     } else if (e.code == 'wrong-password') {
  //       alertBox1(context, "Wrong Password",
  //           'Wrong password provided for that user.');
  //     }
  //   }
  // }
}
