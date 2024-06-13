import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/cart_provider.dart';
import 'package:shopping_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // using provider(read only value) for our state management
    // ChangeNotifierProvider(listen to an event to whatever values been changed) is prefered due to changes in the state of the app
    return ChangeNotifierProvider(
      // instead passing changeNotifier(). A seperate class is initialized in a new file called cart_provider.dart
      create: (context) => CartProvider(),
      child: MaterialApp(
        title: "shopping App",
        theme: ThemeData(
          // default  theme
          fontFamily: 'Lato',
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(254, 204, 1, 1),
            primary: const Color.fromRGBO(254, 204, 1, 1),
          ),
          appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
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
          textTheme: const TextTheme(
            titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
            titleMedium: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            bodySmall: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          useMaterial3: true,
        ),
        home: const HomePage(), // home page from home_page.dart
      ),
    );
  }
}
