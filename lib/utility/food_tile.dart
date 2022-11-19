import 'package:flutter/material.dart';

class FoodTile extends StatelessWidget {
  final String foodFlavor;
  final String foodPrice;
  final foodColor;
  final String imageName;

  final double borderRadius = 12;
  const FoodTile({
    Key? key,
    required this.foodFlavor,
    required this.foodPrice,
    required this.foodColor,
    required this.imageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(borderRadius),
      child: Container(
        decoration: BoxDecoration(
          color: foodColor[50],
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(borderRadius),
                  decoration: BoxDecoration(
                    color: foodColor[200],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(borderRadius),
                      topRight: Radius.circular(borderRadius),
                    ),
                  ),
                  child: Text(
                    '\$' + foodPrice,
                    style: TextStyle(
                      color: foodColor[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 12),
              child: Image.asset(imageName),
            ),
            Text(
              foodFlavor,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Dunkins',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.pink,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
