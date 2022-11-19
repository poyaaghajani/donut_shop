// ignore_for_file: must_be_immutable

import 'package:donut_shop/utility/food_tile.dart';
import 'package:flutter/material.dart';

class PizzaPage extends StatelessWidget {
  PizzaPage({Key? key}) : super(key: key);

  List pizzaOnSale = [
    ['Mushroom', '90', Colors.red, 'images/pizza1.png'],
    ['Green Pizza', '78', Colors.brown, 'images/pizza2.png'],
    ['Beef Pizza', '200', Colors.orange, 'images/pizza3.png'],
    ['Pepperoni', '110', Colors.green, 'images/pizza4.png'],
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
