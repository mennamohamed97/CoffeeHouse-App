import 'package:coffee_app/menu.dart';
import 'package:coffee_app/location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../home.dart';


class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: Opacity(
                opacity: 1,
                child: SvgPicture.asset('assets/home.svg'),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LocationPage()),
                );
              },
              child: Opacity(
                opacity: 1,
                child: SvgPicture.asset('assets/location.svg'),
              ),
            ),
            GestureDetector(
              onTap: () {
              },
              child: Opacity(
                opacity: 1,
                child: SvgPicture.asset('assets/cart.svg'),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
              child: Opacity(
                opacity: 1,
                child: Image.asset('assets/out.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}