import 'package:flutter/material.dart';
import 'package:shopping_app/cart_page.dart';
import 'package:shopping_app/product_list.dart';

class HomePage extends StatefulWidget {
  // stateful widget is ues so that there will availability of storing the items select from filter list
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // keeping in track of the current page in case when cart is clicked or other instances.
  int currentPage = 0;
  // creating a list of pages
  List<Widget> pages = const [
    ProductList(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // navigating between home and cart the code below also work
      // using index stack to maintain the navigation
      body: IndexedStack(
        index: currentPage,
        children: pages,
      ),
      // body: currentPage == 0 ? ProductList() : CartPage(),
      // working on cart and going back to home page
      bottomNavigationBar: BottomNavigationBar(
        // workin on icon size
        iconSize: 35,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        // check your cart item and navigating back to home page
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        currentIndex: currentPage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: '',
          ),
        ],
      ),
    );
  }
}
