import 'package:flutter/material.dart';
import '../models/coffee.dart';

class CoffeeTile extends StatelessWidget {
  final Coffee coffee;
  void Function()? onPressed;
  final Widget icon;
  CoffeeTile({
    super.key,
    required this.coffee,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey[200],
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(
        vertical: 28,
        horizontal: 10,
      ),
      child: ListTile(
        title: Text(coffee.name),
        subtitle: Text(coffee.price),
        leading: Image.asset(coffee.imagePath),
        trailing: IconButton(
          icon: icon,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
