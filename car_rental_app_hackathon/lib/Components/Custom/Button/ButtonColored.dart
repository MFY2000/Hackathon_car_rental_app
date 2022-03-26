// ignore_for_file: file_names

import 'package:car_rental_app_hackathon/Config/constants.dart';
import 'package:car_rental_app_hackathon/Config/size_config.dart';
import 'package:car_rental_app_hackathon/Config/theme.dart';
import 'package:flutter/material.dart';

class ButtonColored extends StatelessWidget {
  final void Function() function;
  final String text;
  const ButtonColored({Key? key, required this.function, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        decoration: BoxDecoration(
            gradient: kPrimaryGradientColor,
            boxShadow: [getShadow(kPrimaryColor)]),
        height: getSize(false, 0.06),
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(color: kPrimaryLightColor),
        ),
      ),
    );
  }
}
