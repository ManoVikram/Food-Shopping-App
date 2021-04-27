import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsTopNav extends StatelessWidget {
  const DetailsTopNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Neumorphic(
            style: NeumorphicStyle(
              color: Colors.white,
              border: NeumorphicBorder(
                width: 4.0,
                color: Colors.white,
              ),
              depth: -5,
            ),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: SvgPicture.asset("assets/icons/left.svg"),
            ),
          ),
          Neumorphic(
            style: NeumorphicStyle(
              color: Colors.white,
              border: NeumorphicBorder(
                width: 4.0,
                color: Colors.white,
              ),
              depth: -5,
            ),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/Vector.svg"),
            ),
          ),
        ],
      ),
    );
  }
}
