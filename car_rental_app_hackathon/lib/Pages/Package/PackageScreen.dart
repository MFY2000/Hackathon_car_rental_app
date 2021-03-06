import 'package:car_rental_app_hackathon/Config/size_config.dart';
import 'package:car_rental_app_hackathon/Pages/Details/Components/CategoriesHeader.dart';
import 'package:car_rental_app_hackathon/Pages/Details/Components/ProductList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PackageScreen extends StatelessWidget {
  const PackageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Builder(
            builder: (context) => IconButton(
              icon: SvgPicture.asset(
                'assets/images/icons/menu.svg',
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundImage:
                  Image.asset('assets/images/user.jpg', fit: BoxFit.contain)
                      .image,
              radius: 25,
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(0),
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              child: Container(
                  height: getSize(false, .35),
                  width: getSize(true, 1),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: null),
            ),
            Positioned(
              top: 100,
              child: const CategoriesHeader(),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(
                  top: getSize(false, .4),
                  left: getSize(true, .1),
                ),
                child: Text(
                  "23 Result",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 250,
              ),
              child: const ProductList(),
            ),
          ],
        ),
      ),
    );
  }
}
