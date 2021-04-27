import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Neumorphic(
          style: NeumorphicStyle(
            border: NeumorphicBorder(
              color: Colors.white,
              width: 6.0,
            ),
            color: Colors.white,
            depth: -5,
          ),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/menu.svg"),
          ),
        ),
        Neumorphic(
          style: NeumorphicStyle(
            border: NeumorphicBorder(
              color: Colors.white,
              width: 6.0,
            ),
            color: Colors.white,
            depth: -5,
          ),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/search.svg"),
          ),
        ),
      ],
    );
  }
}
