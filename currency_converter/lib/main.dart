import 'package:currency_converter/currency_converter.dart';
import 'package:flutter/material.dart'; // for android design patter

void main() {
  runApp(const MyApp());
}

// the extends keyword need an extra contructor that defined this.key

class MyApp extends StatelessWidget {
  // fecthing some data from MyApp and consuming them in the super class which which are extending to
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: currencyConverter());
  }
}
