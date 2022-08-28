import 'package:flutter/material.dart';
import 'package:ticci_web/screens/orders.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Orders(),
    );
  }
}