import 'package:car_rental_app_hackathon/Config/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesHeader extends StatefulWidget {
  const CategoriesHeader({Key? key}) : super(key: key);

  @override
  State<CategoriesHeader> createState() => _CategoriesHeaderState();
}

class _CategoriesHeaderState extends State<CategoriesHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        children: [
          Container(
              height: 100,
              child: Image(image: AssetImage('assets/images/c1.png'))),
          Text(
            'Vigo Cars',
            style: TextStyle(
              color: kPrimaryLightColor,
              fontSize: 19,
              fontWeight: FontWeight.bold,
              letterSpacing: 8.4,
            ),
          ),
        ],
      ),
    );
  }
}
