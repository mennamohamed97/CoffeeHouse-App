import 'package:flutter/material.dart';
import 'package:coffee_app/widgets/icon_text.dart';

class StoreName extends StatelessWidget {
  const StoreName({super.key});



  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Mugs Coffee',
            style: TextStyle(
              color: Color(0xFF2D140D),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            children: <Widget>[
              IconText(
                iconUrl: 'assets/distance.svg',
                title: '6.2 min',
              ),
              SizedBox(width: 60,),
              IconText(
                iconUrl: 'assets/distance.svg',
                title: '30 min',
              )
            ],
          )
        ],
      ),
    );
  }
}


