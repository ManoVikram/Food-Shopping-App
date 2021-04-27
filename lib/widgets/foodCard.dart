import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FoodCard extends StatelessWidget {
  final String category;
  final String image;
  final String name;
  final String description;
  final double price;
  final void Function() onPressed;

  const FoodCard({
    Key? key,
    required this.size,
    required this.category,
    required this.image,
    required this.name,
    required this.description,
    required this.price,
    required this.onPressed,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        border: NeumorphicBorder(
          width: 5.0,
          color: Colors.white,
        ),
        depth: -5,
        boxShape: NeumorphicBoxShape.roundRect(
          BorderRadius.circular(30.0),
        ),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.all(28.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                category,
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 12.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Image.asset(
                image,
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                name,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo[800],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                description,
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.indigo[700],
                ),
              ),
              SizedBox(
                height: 14.0,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$$price",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo[800],
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/icons/+.svg",
                      height: 30.0,
                      width: 30.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
