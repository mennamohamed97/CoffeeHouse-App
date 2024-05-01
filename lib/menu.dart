import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/bottom_nav_bar.dart';
import 'components/product.dart';
import 'components/product_list.dart';
import 'order.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffaf4ee),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xfffaf4ee),
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/menu.svg'),
        ),
        actions: [
          IconButton(
              icon: SvgPicture.asset('assets/search.svg'),
              onPressed: null)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: ListView(
          children: [
            Container(
              child: const Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'sen',
                    fontSize: 36,
                  ),
                  children: [
                    TextSpan(text: 'It\'s Great'),
                    TextSpan(
                      text: ' Day for Coffee',
                      style: TextStyle(
                          fontFamily: 'sen',
                          fontWeight: FontWeight.bold,
                          color: Color(0xffcf9775)),
                    ),
                  ],
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: products.length,
              itemBuilder: (context, index) =>ProductList(
                product: products[index],
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderPage(
                        product: products[index],
                      ),
                    ),
                  );
                },
              ),

            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}