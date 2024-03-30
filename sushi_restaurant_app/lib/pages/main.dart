import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_restaurant_app/models/shop.dart';
import 'package:sushi_restaurant_app/pages/intro_page.dart';
import 'cart_page.dart';
import 'menu_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const SushiRestaurantApp(),
  ));
}

class SushiRestaurantApp extends StatelessWidget {
  const SushiRestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sushi Restaurant App',
        home: const IntroPage(),
        routes: {
          '/intropage': (context) => const IntroPage(),
          '/menupage': (context) => const MenuPage(),
          '/cartpage': (context) => const CartPage(),
        });
  }
}
