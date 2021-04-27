import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:foods_shopping_app/screens/detailsScreen.dart';

import '../widgets/categoriesList.dart';
import '../widgets/foodCard.dart';
import '../widgets/topBar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 20.0,
            ),
            child: Column(
              children: [
                TopBar(),
                SizedBox(
                  height: 40.0,
                ),
                CategoriesList(),
                SizedBox(
                  height: 40.0,
                ),
                GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 0.59,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.all(8.0),
                  mainAxisSpacing: 18.0,
                  crossAxisSpacing: 18.0,
                  children: [
                    FoodCard(
                      size: size,
                      category: "Fruits",
                      image: "assets/images/respberries.png",
                      name: "Raspberries",
                      description: "Fruits of a multitude plant species",
                      price: 10.50,
                      onPressed: () {},
                    ),
                    FoodCard(
                      size: size,
                      category: "Fruits",
                      image: "assets/images/grapes.png",
                      name: "Green Grapes",
                      description: "Fruits of a multitude plant species",
                      price: 15.50,
                      onPressed: () {},
                    ),
                    FoodCard(
                      size: size,
                      category: "Bakery",
                      image: "assets/images/mcaroon.png",
                      name: "Pink Macaroon",
                      description: "Fruits of a multitude plant species",
                      price: 5.25,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(),
                          ),
                        );
                      },
                    ),
                    FoodCard(
                      size: size,
                      category: "Fruits",
                      image: "assets/images/purpleGrapes.png",
                      name: "Purple Grapes",
                      description: "Fruits of a multitude plant species",
                      price: 2.25,
                      onPressed: () {},
                    ),
                    /* FoodCard(
                      size: size,
                      category: "Vegetables",
                      image: "assets/images/cabbage.png",
                      name: "Green Cabbage",
                      description: "Fruits of a multitude plant species",
                      price: 5.0,
                    ), */
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
