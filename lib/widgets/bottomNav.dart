import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        depth: -5,
      ),
      child: Container(
        height: 70.0,
        width: 70.0,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/Menu 1.svg"),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 36.0),
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/Menu 2.svg"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36.0),
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/Menu 4.svg"),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/Menu 5.svg"),
            ),
          ],
        ),
      ),
    );
  }
}
