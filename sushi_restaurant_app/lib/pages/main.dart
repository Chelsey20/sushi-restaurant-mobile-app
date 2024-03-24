import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/pages/intro_page.dart';
import 'menu_page.dart';

void main() {
  runApp(const SushiRestaurantApp());
}

class SushiRestaurantApp extends StatelessWidget {
  const SushiRestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sushi Restaurant App',
        home: IntroPage(),
        routes: {
          '/intropage': (context) => const IntroPage(),
          '/menupage': (context) => const MenuPage(),
        });
  }
}
