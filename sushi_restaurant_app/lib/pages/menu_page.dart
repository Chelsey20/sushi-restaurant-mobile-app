import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restaurant_app/components/button.dart';
import 'package:sushi_restaurant_app/themes/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(
            Icons.menu,
            color: Colors.grey[900],
          ),
          title: Text(
            'Tokyo',
            style: TextStyle(color: Colors.grey[900]),
          ),
        ),
        body: Column(
          children: [
            //promo banner
            Container(
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(20)),
              margin: const EdgeInsets.symmetric(horizontal: 25),
              padding: const EdgeInsets.all(25),
              child: Row(
                children: [
                  Column(
                    children: [
                      //promo message
                      Text('Get 32% Promo',
                          style: GoogleFonts.dmSerifDisplay(
                            fontSize: 20,
                            color: Colors.white,
                          )),

                      const SizedBox(
                        height: 20.0,
                      ),

                      //redeem button
                      MyButton(
                        text: "Redeem",
                        onTap: () {},
                      )
                    ],
                  ),

                  //image
                  Image.asset('lib\images\sushi-many.png', height: 100)
                ],
              ),
            )

            //search bar

            //menu list

            //popular food
          ],
        ));
  }
}
