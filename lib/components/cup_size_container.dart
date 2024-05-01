import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum sizeType { small, medium, large }
sizeType selectedSize=sizeType.small;

class CupSizeContainer extends StatefulWidget {
  const CupSizeContainer({
    super.key,
  });

  @override
  _CupSizeContainerState createState() => _CupSizeContainerState();
}

class _CupSizeContainerState extends State<CupSizeContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Size',
            style: TextStyle(fontFamily: 'sen', fontSize: 20, fontWeight: FontWeight.w400),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CupSize(
                  isSelected: selectedSize == sizeType.small,
                  cupImage: 'assets/size_small.svg',
                  onPress: () {
                    setState(() {
                      selectedSize = sizeType.small;
                    });
                  },
                ),
                CupSize(
                  isSelected: selectedSize == sizeType.medium,
                  cupImage: 'assets/size_medium.svg',
                  onPress: () {
                    setState(() {
                      selectedSize = sizeType.medium;
                    });
                  },
                ),
                CupSize(
                  isSelected: selectedSize == sizeType.large,
                  cupImage: 'assets/size_large.svg',
                  onPress: () {
                    setState(() {
                      selectedSize = sizeType.large;
                    });
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CupSize extends StatelessWidget {
  final String cupImage;
  final bool isSelected;
  final VoidCallback? onPress;
  const CupSize({
    super.key,
    required this.cupImage,
    required this.isSelected,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Opacity(
              opacity: isSelected ? 1 : 0.5,
              child: Container(
                child: SvgPicture.asset(cupImage),
              ),
            ),
            Opacity(
              opacity: isSelected ? 1 : 0,
              child: Container(
                margin: const EdgeInsets.only(top: 12),
                height: 4,
                width: 20,
                color: const Color(0xffcf9775),
              ),
            )
          ],
        ),
      ),
    );
  }
}
