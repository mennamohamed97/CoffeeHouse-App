import 'package:coffee_app/components/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductContainer extends StatelessWidget {
  final Product product;
  const ProductContainer({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 340,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12, offset: Offset(0, 28), blurRadius: 80)
            ],
            image: DecorationImage(
                image: AssetImage('assets/bg.png'), fit: BoxFit.cover),
          ),
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.only(top: 100),
            height: 160,
            width: 180,
            child: SvgPicture.asset(product.image),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 16, horizontal: 12),
          child: Row(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back_ios)),
              Expanded(
                child: Text(
                  product.name,
                  style:  const TextStyle(fontFamily: 'sen', fontSize: 20, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                width: 50,
              )
            ],
          ),
        )
      ],
    );
  }
}
