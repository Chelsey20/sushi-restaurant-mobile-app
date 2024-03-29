import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restaurant_app/themes/colors.dart';
import '../models/food.dart';

class FoodDetailsPage extends StatefulWidget {
  final Food food;

  const FoodDetailsPage({super.key, required this.food});

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  //quantity count
  int quantityCount = 0;

  //decrement quantity
  void decrementQuantity() {
    setState(() {
      quantityCount--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.grey[900],
        ), //listview of food details
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: ListView(
                  children: <Widget>[
                    //image
                    Image.asset(
                      widget.food.imagePath,
                      height: 200,
                    ),

                    const SizedBox(height: 25),

                    Row(
                      children: [
                        //star icon
                        Icon(
                          Icons.star,
                          color: Colors.yellow[800],
                        ),

                        const SizedBox(
                          width: 10,
                        ),

                        //rating number
                        Text(
                          widget.food.rating,
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    //food name
                    Text(
                      widget.food.name,
                      style: GoogleFonts.dmSerifDisplay(fontSize: 28),
                    ),

                    const SizedBox(
                      height: 25,
                    ),

                    //description
                    Text(
                      "Description",
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "Delicate sliced, fresh salmon drapes elegantly over a pillow of perfectly seasoned shushi rice",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        height: 2,
                      ),
                    )
                  ],
                ),
              ),
            ),

            // price + quantity + add to cart button
            Container(
              color: primaryColor,
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    //price
                    Text(
                      "\$" + widget.food.price,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),

                    // quantity
                    Row(
                      children: [
                        //minus button
                        Container(
                            child: IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: decrementQuantity,
                        ))

                        //quantity

                        //plus button
                      ],
                    )

                    //add to cart
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
