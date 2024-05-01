import 'package:flutter/material.dart';

class Address extends StatelessWidget {
  const Address({super.key});


  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Address',
            style: TextStyle(
              color: Color(0xFF2D140D),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 6,),
          Text(
            '21 Salah Salem Street\nAlexandria, Egypt ',
            style: TextStyle(
              color: Color(0xFF2D140D),
            ),
          )
        ],
      ),
    );
  }
}
