import 'package:coffee_app/components/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductList extends StatelessWidget {
  final Product product;
  final VoidCallback? onPress;

  const ProductList({
    super.key,
    required this.onPress,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          children: [
            SizedBox(
              width: 60,
              child: SvgPicture.asset(product.image),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              product.name,
              style: const TextStyle(fontFamily: 'sen', fontSize: 20, fontWeight: FontWeight.w400),
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
