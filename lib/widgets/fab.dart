import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FAB extends StatelessWidget {
  const FAB({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        shape: NeumorphicShape.convex,
        boxShape: NeumorphicBoxShape.circle(),
        border: NeumorphicBorder(
          width: 6.0,
          color: Colors.redAccent,
          isEnabled: true,
        ),
        depth: 30,
      ),
      child: Container(
        height: 70.0,
        width: 70.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.redAccent,
        ),
        child: SvgPicture.asset(
          "assets/icons/+.svg",
          color: Colors.white,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
