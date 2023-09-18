import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
              child: ListView.builder(itemBuilder: (context, index) {
                // get individual Coffee

                // return the tile for this Coffee
                
              }),
            ),
          ],
        ),
      ),
    );
  }
}
