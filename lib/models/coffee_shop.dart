import 'package:flutter/material.dart';

import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {
  // Coffee for sale list
  final List<Coffee> _shop = [
    // Black Coffee
    Coffee(
      name: "Long Black",
      price: "250",
      imagePath: "assets/2hotcoffee.png",
    ),

    // Latte
    Coffee(
      name: "Latte",
      price: "320",
      imagePath: "assets/1latte.png",
    ),

    // Brew
    Coffee(
      name: "Brew",
      price: "220",
      imagePath: "assets/4brew.png",
    ),

    // Espresso
    Coffee(
      name: "Espresso",
      price: "150",
      imagePath: "assets/6coldroasted.png",
    ),

    // Frappe
    Coffee(
      name: "Frappe",
      price: "190",
      imagePath: "assets/8coffee-cup.png",
    ),

    // Iced Coffee
    Coffee(
      name: "Iced Coffee",
      price: "200",
      imagePath: "assets/9cold-coffee.png",
    ),

    // Mocha Iced
    Coffee(
      name: "Mocha Iced",
      price: "260",
      imagePath: "assets/3icedcoffee.png",
    ),
  ];

  // User Cart
  List<Coffee> _userCart = [];

  // get Coffee List
  List<Coffee> get coffeeShop => _shop;

  // get User Cart
  List<Coffee> get userCart => _userCart;

  // add Item to Cart
  void addItemToCart(Coffee coffee){
    _userCart.add(coffee);
    notifyListeners();
  }

  // remove Item from Cart
  void removeItemFromCart(Coffee coffee){
    _userCart.remove(coffee);
    notifyListeners();
  }

}
