import 'package:flutter/material.dart';

// creating cart provider class where it will keep track of product which can be add and remove
class CartProvider extends ChangeNotifier {
  // creating cart variable
  final List<Map<String, dynamic>> cart = [];

  void addProduct(Map<String, dynamic> product, Map<String, Object> map) {
    cart.add(product);
    notifyListeners();
  }

  void removeProduct(Map<String, dynamic> product) {
    cart.remove(product);
    notifyListeners();

  }
}
