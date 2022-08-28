import 'package:flutter/material.dart';

class OrderTile extends StatelessWidget {
  const OrderTile ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Text('#1'),
        Text('Malhaar Arora'),
        Text('Banana Leaf'),
        Text('Aug 27, 2022 12:13 PM'),
        Text('₹150'),
        Text('Pending'),
      ],
    );
  }
}