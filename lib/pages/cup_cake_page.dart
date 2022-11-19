// ignore_for_file: must_be_immutable

import 'package:donut_shop/utility/food_tile.dart';
import 'package:flutter/material.dart';

class CupCakePage extends StatelessWidget {
  CupCakePage({Key? key}) : super(key: key);

  List pizzaOnSale = [
    ['Hazelnut', '30', Colors.purple, 'images/cake1.png'],
    ['Ice Cream', '45', Colors.brown, 'images/cake2.png'],
    ['Strawberry', '25', Colors.cyan, 'images/cake3.png'],
    ['Bnana Cake', '67', Colors.yellow, 'images/cake4.png'],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: pizzaOnSale.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          return FoodTile(
            foodFlavor: pizzaOnSale[index][0],
            foodPrice: pizzaOnSale[index][1],
            foodColor: pizzaOnSale[index][2],
            imageName: pizzaOnSale[index][3],
          );
        });
  }
}
