import 'package:donut_shop/utility/food_tile.dart';
import 'package:flutter/material.dart';

class DonutPage extends StatelessWidget {
  DonutPage({Key? key}) : super(key: key);

  List donutOnSale = [
    ['Strawberry', '36', Colors.red, 'images/donut1.png'],
    ['Ice Cream', '45', Colors.brown, 'images/donut2.png'],
    ['Choco', '84', Colors.purple, 'images/donut3.png'],
    ['Grape Ape', '95', Colors.blue, 'images/donut4.png'],
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
