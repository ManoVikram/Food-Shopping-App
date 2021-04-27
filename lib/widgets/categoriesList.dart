import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Text(
            "All",
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.red,
              decoration: TextDecoration.underline,
            ),
          ),
          SizedBox(
            width: 32.0,
          ),
          Text(
            "Fruits",
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          SizedBox(
            width: 32.0,
          ),
          Text(
            "Vegetables",
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          SizedBox(
            width: 32.0,
          ),
          Text(
            "Greens",
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          SizedBox(
            width: 32.0,
          ),
          Text(
            "Bakes",
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }
}
