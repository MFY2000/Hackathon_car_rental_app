import 'package:car_rental_app_hackathon/Components/Custom/Cards/Product/GridCard.dart';
import 'package:car_rental_app_hackathon/Config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProductGrid extends StatefulWidget {
  const ProductGrid({Key? key}) : super(key: key);

  @override
  _ProductGridState createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  final List<Map> myProducts = List.generate(100000,
      (index) => {"id": index, "name": "Product $index", "image": ""}).toList();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return ProductCard(
                name: "myProducts ${index}",
                image: "assets/images/c1.png",
              );
            }));
  }
}
