import 'package:flutter/material.dart';
import 'package:ticci_web/screens/orders.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: const Orders(),
    );
  }
}