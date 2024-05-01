import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum sugarNumber { zero, one, two, three }
sugarNumber selectedSugar=sugarNumber.zero;

class SugarContainer extends StatefulWidget {
  const SugarContainer({
    super.key,
  });

  @override
  _SugarContainerState createState() => _SugarContainerState();
}

class _SugarContainerState extends State<SugarContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          const Row(
            children: [
              Text(
                'Sugar',
                style:  TextStyle(fontFamily: 'sen', fontSize: 20, fontWeight: FontWeight.w400),
              ),
              Opacity(
                opacity: 0.4,
                child: Text(
                  ' (in cubes)',
                  style:  TextStyle(fontFamily: 'sen', fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Sugar(
                  sugarImage: 'assets/sugar_0.svg',
                  isSelected: selectedSugar == sugarNumber.zero,
                  onPress: () {
                    setState(() {
                      selectedSugar = sugarNumber.zero;
                    });
                  },
                ),
                Sugar(
                  sugarImage: 'assets/sugar_1.svg',
                  isSelected: selectedSugar == sugarNumber.one,
                  onPress: () {
                    setState(() {
                      selectedSugar = sugarNumber.one;
                    });
                  },
                ),
                Sugar(
                  sugarImage: 'assets/sugar_2.svg',
                  isSelected: selectedSugar == sugarNumber.two,
                  onPress: () {
                    setState(() {
                      selectedSugar = sugarNumber.two;
                    });
                  },
                ),
                Sugar(
                  sugarImage: 'assets/sugar_3.svg',
                  isSelected: selectedSugar == sugarNumber.three,
                  onPress: () {
                    setState(() {
                      selectedSugar = sugarNumber.three;
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

class Sugar extends StatelessWidget {
  final String sugarImage;
  final bool isSelected;
  final VoidCallback? onPress;
  const Sugar({
    super.key,
    required this.sugarImage,
    required this.isSelected,
     this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: [
            Opacity(
              opacity: isSelected ? 1 : 0.5,
              child: Container(
                child: SvgPicture.asset(sugarImage),
              ),
            ),
            Opacity(
              opacity: isSelected ? 1 : 0,
              child: Container(
                margin: const EdgeInsets.only(top: 12),
                height: 4,
                width: 15,
                color: const Color(0xffcf9775),
              ),
            )
          ],
        ),
      ),
    );
  }
}
