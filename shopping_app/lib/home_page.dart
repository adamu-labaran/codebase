import 'package:flutter/material.dart';
import 'package:shopping_app/global_variable.dart';
import 'package:shopping_app/product_card.dart';

class HomePage extends StatefulWidget {
  // stateful widget is ues so that there will availability of storing the items select from filter list
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> filters = const ['All', 'Addidas', 'Nike'];
  late String selectedFilter;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // keeping track of list of items selected
    selectedFilter = filters[0];
  }

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
          const Row(
            // row is used to wrap Text and TextField in order to a both of them in a single line as textField is block element it takes the entire line
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
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
              ),
            ],
          ),
          SizedBox(
            // these lines of code is working on list of product items such as Addidas, Nike etc
            height: 120,
            child: ListView.builder(
              // Listview was used here which take the entire size of the screen and is not ideal
              // however it was refactor to 'wrap with widget' then assing sizeBox widget to it so I can decide for it height
              itemCount: filters.length,
              scrollDirection: Axis.horizontal, // for scrolable flexibility
              itemBuilder: (context, index) {
                final filter = filters[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal:
                          8.0), // symmetric was used because we want the padding for only left and right
                  child: GestureDetector(
                    // listen to an event whenver any item selected from the list
                    onTap: () {
                      setState(() {
                        selectedFilter = filter;
                      });
                    },
                    child: Chip(
                      backgroundColor: selectedFilter == filter
                          ? Theme.of(context).colorScheme.primary
                          : const Color.fromRGBO(245, 247, 249, 1),
                      side: const BorderSide(
                        color: Color.fromRGBO(245, 247, 249, 1),
                      ),
                      // wraping Chip with padding widget so the the filter items list will balance
                      label: Text(filter),
                      labelStyle: const TextStyle(
                        fontSize: 16,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                );
              },
            ),
          ),
          // working on the product item
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ProductCard(
                  title: product['title'] as String,
                  price: product['price'] as double,
                  image: product['imageURL'] as String,
                );
              },
            ),
          )
        ],
      ),
    ));
  }
}
