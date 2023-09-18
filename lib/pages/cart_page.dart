import 'package:coffeeui/components/coffee_tile.dart';
import 'package:coffeeui/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/coffee.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // Remove item from cart
  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeItemFromCart(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              // Heading
              Text(
                'Your Cart',
                style: TextStyle(fontSize: 20),
              ),

              // List of Cart Items
              Expanded(
                child: ListView.builder(
                    itemCount: value.userCart.length,
                    itemBuilder: (context, index) {
                      // get Individual cart items
                      Coffee eachCoffee = value.userCart[index];

                      // return Coffee Tile
                      return CoffeeTile(
                        coffee: eachCoffee,
                        onPressed: () => removeFromCart(eachCoffee),
                        icon: Icon(Icons.delete),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
