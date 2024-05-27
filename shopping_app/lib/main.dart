import 'package:flutter/material.dart';
import 'package:shopping_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "shopping App",
      theme: ThemeData(
        // default  theme
        fontFamily: 'Lato',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(254, 204, 1, 1),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          // search bar default settings
          hintStyle: TextStyle(
            // hintStyle is the labe tag for seach from TextField()
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          prefixIconColor:
              Color.fromRGBO(119, 119, 119, 1), //default prefix color
        ),
      ),
      home: const HomePage(), // home page from home_page.dart
    );
  }
}
