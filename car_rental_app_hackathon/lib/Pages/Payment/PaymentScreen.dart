import 'package:car_rental_app_hackathon/Components/Custom/Button/ButtonColored.dart';
import 'package:car_rental_app_hackathon/Config/constants.dart';
import 'package:car_rental_app_hackathon/Config/size_config.dart';
import 'package:car_rental_app_hackathon/Config/theme.dart';
import 'package:car_rental_app_hackathon/Pages/Payment/Components/CalculatorTaxTable.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(
              vertical: getSize(false, .025), horizontal: getSize(true, .05)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Payment",
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(
                height: getSize(true, .075),
              ),
              Container(
                height: getSize(false, .3),
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: getSize(false, .225),
                  width: getSize(true, .75),
                  child: Image.asset(
                    "assets/images/Daco_4649559.png",
                    fit: BoxFit.fill,
                  ),
                  // decoration: BoxDecoration(border: Border.all()),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                height: 1,
              ),
              CalculatorTaxTable(),
              SizedBox(
                height: getSize(true, .1),
              ),
              ButtonColored(function: () {}, text: "Add Card"),
              SizedBox(
                height: getSize(true, .03),
              ),
              SizedBox(
                width: getSize(true, 0.9),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // SizedBox(
                    //   width: getSize(true, 0.45),
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //         color: Colors.transparent,
                    //         boxShadow: [getShadow(kTextColor)]),
                    //     height: getSize(false, 0.06),
                    //     width: getSize(true, 0.5),
                    //     alignment: Alignment.center,
                    //     child: const Text(
                    //       "Cash on Delivery",
                    //       style: TextStyle(
                    //         color: kHeading,
                    //       ),
                    //     ),
                    //   ),
                    // ),

                    GestureDetector(
                        onTap: () {},
                        child: DottedBorder(
                          color: kPrimaryColor,
                          strokeWidth: 1,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: getSize(true, 0.065),
                            ),
                            color: kPrimaryLightColor,
                            height: getSize(false, 0.06),
                            alignment: Alignment.center,
                            child: Text(
                              "Cash on Delivery",
                              style: const TextStyle(color: kPrimaryColor),
                            ),
                          ),
                        )),

                    SizedBox(
                        width: getSize(true, 0.45),
                        child: ButtonColored(
                          function: () => {},
                          text: "Checkout",
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
