import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Details extends StatelessWidget {
  const Details({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Neumorphic(
        style: NeumorphicStyle(
          border: NeumorphicBorder(
            width: 6.0,
            color: Colors.white,
          ),
          boxShape: NeumorphicBoxShape.roundRect(
            BorderRadius.only(
              topLeft: Radius.circular(36.0),
              topRight: Radius.circular(36.0),
            ),
          ),
          depth: -6,
        ),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(24.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(36.0),
              topRight: Radius.circular(36.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pink Macaroon",
                style: TextStyle(
                  fontSize: 36.0,
                  color: Color(0xFFFF7C63),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/-.svg",
                    height: 36.0,
                    width: 36.0,
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  Text(
                    "1",
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.indigo[900],
                    ),
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  SvgPicture.asset(
                    "assets/icons/+.svg",
                    height: 36.0,
                    width: 36.0,
                  ),
                  Spacer(),
                  Text(
                    "\$10.50",
                    style: TextStyle(
                      color: Color(0xFF1A1F96),
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "A macaroon is a small cake or cookie, typically made from ground almonds, coconut or other nuts with sugar and sometimes flavorings, food coloring, glace cherries, jam or a chocolate coating – or a combination of these or other ingredients",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Color(0xFF1A1F96).withOpacity(0.52),
                  height: 1.7,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
