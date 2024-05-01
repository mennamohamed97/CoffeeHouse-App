import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Center(
        child: Container(
          width: 150,
          height: 50,
          decoration: BoxDecoration(
              color: const Color(0xffcf9775),
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                    color: Color(0xffeedace),
                    offset: Offset(0, 20),
                    blurRadius: 30)
              ]),
          child: const Center(
              child: Text(
            'add to cart',
            style:
                TextStyle(fontFamily: 'sen', fontSize: 20, color: Colors.white),
          )),
        ),
      ),
    );
  }
}
