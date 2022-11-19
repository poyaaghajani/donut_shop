import 'package:flutter/material.dart';

class BirthDayCakePage extends StatelessWidget {
  const BirthDayCakePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'empty',
        style: TextStyle(
          fontSize: 70,
          fontWeight: FontWeight.bold,
          color: Colors.grey[600],
        ),
      ),
    );
  }
}
