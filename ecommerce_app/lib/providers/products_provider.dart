import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductsProvider with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl: 'https://example.com/red-shirt.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Blue Shirt',
      description: 'A blue shirt - it is pretty blue!',
      price: 19.99,
      imageUrl: 'https://example.com/blue-shirt.jpg',
    ),
    // Add more products as needed
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }
}
