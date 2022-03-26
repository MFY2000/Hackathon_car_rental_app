import 'package:car_rental_app_hackathon/Config/size_config.dart';
import 'package:flutter/material.dart';

class SearchCar extends StatelessWidget {
  const SearchCar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getSize(true, .05)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(
              bottom: getSize(true, 0.05),
            ),
            child: Text(
              "Choose your car",
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          Row(
            children: [
              Container(
                width: getSize(true, 0.75),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: "Search",
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
