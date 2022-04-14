import 'package:car_rental_app_hackathon/Config/constants.dart';
import 'package:car_rental_app_hackathon/Pages/Details/Components/CategoriesInfo.dart';
import 'package:car_rental_app_hackathon/Pages/Package/PackageScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesCard extends StatefulWidget {
  const CategoriesCard({Key? key}) : super(key: key);

  @override
  _CategoriesCardState createState() => _CategoriesCardState();
}

class _CategoriesCardState extends State<CategoriesCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => PackageScreen()))
            },
        child: Card(
          elevation: 4,
          child: Container(
            decoration: BoxDecoration(
              color: kPrimaryLightColor,
              borderRadius: BorderRadius.circular(20),
              // boxShadow: [productCardShadow],
            ),
            margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
            height: 90.0.h,
            width: 280.0.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 80.h,
                  width: 90.w,
                  child: Image.asset(
                    'assets/images/c1.png',
                    fit: BoxFit.scaleDown,
                  ),
                ),
                CategoriesInfo(),
              ],
            ),
          ),
        ));
  }
}
