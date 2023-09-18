import 'package:flutter/material.dart';

import 'coffee.dart';

class CoffeeShop {
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

    // Espresso
    Coffee(
      name: "Espresso",
      price: "150",
      imagePath: "assets/6coldroasted.png",
    ),

    // Iced Coffee
    Coffee(
      name: "Iced Coffee",
      price: "200",
      imagePath: "assets/9cold-coffee.png",
    ),

    // Brew
    Coffee(
      name: "Brew",
      price: "200",
      imagePath: "assets/4brew.png",
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
  }

  // remove Item from Cart
  void removeItemFromCart(Coffee coffee){
    _userCart.remove(coffee);
  }

}
