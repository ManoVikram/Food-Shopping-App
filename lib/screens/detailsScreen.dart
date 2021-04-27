import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../widgets/bottomNav.dart';
import '../widgets/detailsTopNav.dart';
import '../widgets/fab.dart';
import '../widgets/details.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      floatingActionButton: FAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNav(),
      body: SafeArea(
        child: Column(
          children: [
            DetailsTopNav(),
            SizedBox(
              height: 20.0,
            ),
            Image.asset(
              "assets/images/mcaroon.png",
              fit: BoxFit.cover,
              height: size.height * 0.3,
            ),
            SizedBox(
              height: 30.0,
            ),
            Details(),
          ],
        ),
      ),
    );
  }
}








