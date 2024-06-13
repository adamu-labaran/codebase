import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:shopping_app/cart_provider.dart';
import 'package:shopping_app/global_variable.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context).cart; // taking care of each product to be added to the cart.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          final cartItem = cart[index];

          // list of items added to the cart
          return ListTile(
            leading: CircleAvatar(
              // selected product
              backgroundImage: AssetImage(cartItem['imageURL'] as String),
              radius: 40,
            ),
            // deleting a product
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
            title: Text(
              cartItem['title'].toString(),
              style: Theme.of(context).textTheme.bodySmall,
            ),
            subtitle: Text('Size: ${cartItem['size']}'),
          );
        },
      ),
    );
  }
}
