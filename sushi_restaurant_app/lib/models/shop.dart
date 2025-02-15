import 'package:flutter/material.dart';
import 'food.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    //salmon sushi
    Food(
        name: "Salmon Sushi",
        price: "21.00",
        imagePath: "lib/images/sushi-can.png",
        rating: "4.9"),

    //tuna
    Food(
      name: "Tuna",
      price: "23.00",
      imagePath: "lib/images/tuna.png",
      rating: "4.9",
    ),
  ];

  //customer cart
  List<Food> _cart = [];

  //getter methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  //add to cart
  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  //remove to cart
  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
