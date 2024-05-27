import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      // outline border is used to create line bar from the search bar
      borderSide: BorderSide(
        color: Color.fromRGBO(225, 225, 225, 1),
      ),
      borderRadius: BorderRadius.horizontal(
        left: Radius.circular(50),
      ),
    );
    return Scaffold(
        body: SafeArea(
      // safe area is used to prevent content from uppermost and buttom of our app
      child: Column(
        // column is used to center our program from the screen widget.
        children: [
          Row(
            // row is used to wrap Text and TextField in order to a both of them in a single line as textField is block element it takes the entire line
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Shoes\nCollection',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
              ),
              Expanded(
                //  expanded determines the screen size for all devices for both text and textField and for TextField to use the remaining space after the shoes collection
                child: TextField(
                  decoration: InputDecoration(
                    // seach bar 'search
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search), // search bar Icon
                    border: border,
                    enabledBorder: border,
                    focusedBorder:
                        border, // this  border have been defined from top so that it can passed as a value.
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
