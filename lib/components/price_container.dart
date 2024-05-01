import 'package:coffee_app/components/product.dart';
import 'package:flutter/material.dart';

int itemCount = 1;

class PriceContainer extends StatefulWidget {
  final Product product;
  const PriceContainer({
    super.key,
    required this.product,
  });

  @override
  _PriceContainerState createState() => _PriceContainerState();
}

class _PriceContainerState extends State<PriceContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.product.name,
                style: const TextStyle(fontFamily: 'sen', fontSize: 20, fontWeight: FontWeight.w400),
              ),
              Row(
                children: [
                  const Text(
                    '₹',
                    style: TextStyle(
                        color: Color(0xffcf9775),
                        fontFamily: 'sen',
                        fontSize: 24),
                  ),
                  Text(
                    '${widget.product.price}',
                    style: const TextStyle(
                        color: Color(0xffcf9775),
                        fontFamily: 'sen',
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
          const Spacer(),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  if (itemCount > 1) {
                    setState(() {
                      itemCount--;
                    });
                  }
                },
                child: Container(
                  height: 36,
                  width: 36,
                  decoration: const BoxDecoration(
                    color: Color(0xffcf9775),
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(30),
                    ),
                  ),
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 36,
                width: 36,
                child: Center(
                    child: Text(
                  '$itemCount',
                  style: const TextStyle(
                      fontFamily: 'sen',
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                )),
              ),
              GestureDetector(
                onTap: () {
                  if (itemCount < 9) {
                    setState(() {
                      itemCount++;
                    });
                  }
                },
                child: Container(
                  height: 36,
                  width: 36,
                  decoration: const BoxDecoration(
                    color: Color(0xffcf9775),
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(30),
                    ),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
