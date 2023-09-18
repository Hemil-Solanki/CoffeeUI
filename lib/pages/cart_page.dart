import 'package:coffeeui/components/coffee_tile.dart';
import 'package:coffeeui/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vibration/vibration.dart';

import '../models/coffee.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // Function to trigger vibration
  void _vibrate() {
    // Vibrate for 100ms
    Vibration.vibrate(duration: 10);
  }

  // Remove item from cart
  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeItemFromCart(coffee);
  }

  // pay Button tapped
  void payNow() {
    /*
      Fill Out Your Payment Services Here
    */
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

              SizedBox(
                height: 20,
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
                      // onPressed: () => removeFromCart(eachCoffee),
                      onPressed: () {
                        // Call the vibration function
                        _vibrate();
                        // Remove from cart
                        removeFromCart(eachCoffee);
                      },
                      icon: Icon(Icons.delete),
                    );
                  },
                ),
              ),

              // Pay Button
              GestureDetector(
                // onTap: payNow,
                onTap: () {
                  // Call the vibration function
                  _vibrate();
                  // redirect to payment page
                  payNow();
                },
                child: Container(
                  padding: const EdgeInsets.all(25),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.indigo[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      'Pay Now',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
