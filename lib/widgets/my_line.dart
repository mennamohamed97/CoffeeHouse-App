import 'package:flutter/material.dart';

class MyLine extends StatelessWidget {
  const MyLine({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 5,
      decoration: BoxDecoration(
        color: const Color(0xFF2D140D),
        borderRadius: BorderRadius.circular(2.5),
      ),
    );
  }
}
