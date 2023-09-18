import 'package:coffeeui/components/coffee_tile.dart';
import 'package:coffeeui/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vibration/vibration.dart';

import '../models/coffee.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // Function to trigger vibration
  void _vibrate() {
    // Vibrate for 100ms
    Vibration.vibrate(duration: 10);
  }

  // add coffee to cart
  void addToCart(Coffee coffee) {
    // add to cart
    Provider.of<CoffeeShop>(context, listen: false).addItemToCart(coffee);

    // Let the User know it added Successfully
    showDialog(
      context: context,
      builder: (coffee) => AlertDialog(
        title: Text('Successfully added to Cart'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              // Heading message
              const Text(
                "How would you like your Coffee ?",
                style: TextStyle(fontSize: 20),
              ),

              const SizedBox(
                height: 25,
              ),

              // List of Coffee to buy
              Expanded(
                child: ListView.builder(
                  itemCount: value.coffeeShop.length,
                  itemBuilder: (context, index) {
                    // get individual Coffee
                    Coffee eachCoffee = value.coffeeShop[index];

                    // return the tile for this Coffee
                    return CoffeeTile(
                      coffee: eachCoffee,
                      // onPressed: () => addToCart(eachCoffee),
                      onPressed: () {
                        // Call the vibration function
                        _vibrate();
                        // Add to cart
                        addToCart(eachCoffee);
                      },
                      icon: Icon(Icons.add),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
