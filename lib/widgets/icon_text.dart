import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconText extends StatelessWidget {
  const IconText({super.key,
    required this.iconUrl,
    required this.title,
  }) ;

  final String iconUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SvgPicture.asset(iconUrl, color: const Color(0xFF2D140D)),
        const SizedBox(
          width: 6,
        ),
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFF2D140D),
          ),
        ),
      ],
    );
  }
}
