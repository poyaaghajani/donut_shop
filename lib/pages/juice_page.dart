import 'package:donut_shop/utility/food_tile.dart';
import 'package:flutter/material.dart';

class JuicePage extends StatelessWidget {
  JuicePage({Key? key}) : super(key: key);

  List donutOnSale = [
    ['Strawberry', '56', Colors.pink, 'images/juice1.png'],
    ['Orange Juice', '34', Colors.orange, 'images/juice2.png'],
    ['Purple Grape', '45', Colors.purple, 'images/juice3.png'],
    ['Watermelon', '23', Colors.red, 'images/juice4.png'],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: donutOnSale.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          return FoodTile(
            foodFlavor: donutOnSale[index][0],
            foodPrice: donutOnSale[index][1],
            foodColor: donutOnSale[index][2],
            imageName: donutOnSale[index][3],
          );
        });
  }
}
