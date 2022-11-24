import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:inshop/pages/HomeScreenSubPages/item.dart';
import 'package:inshop/utils/colors.dart';
import 'package:inshop/utils/widgets.dart';

var itemList = <CartItemView>[
  CartItemView(
    imageString: 'assets/images/cart/shoe1.png',
    priceNow: '599',
    originalPrice: '1299',
    productName: 'Air Max 90-EZ Black 1',
    saveForLater: true,
    // index: 0,
  ),
  CartItemView(
    imageString: 'assets/images/cart/shoe1.png',
    priceNow: '599',
    originalPrice: '1299',
    productName: 'Air Max 90-EZ Black 2',
    saveForLater: true,
    // index: 1,
  ),
  CartItemView(
    imageString: 'assets/images/cart/shoe1.png',
    priceNow: '599',
    originalPrice: '1299',
    productName: 'Air Max 90-EZ Black 3',
    saveForLater: true,
    // index: 1,
  ),
];
List<CartItemView> itemBuyLater = [
  CartItemView(
    imageString: 'assets/images/cart/shoe1.png',
    priceNow: '599',
    originalPrice: '1299',
    productName: 'Air Max 90-EZ Black 4',
    saveForLater: false,
    // index: 0,
  ),
  CartItemView(
    imageString: 'assets/images/cart/shoe1.png',
    priceNow: '599',
    originalPrice: '1299',
    productName: 'Air Max 90-EZ Black 5',
    saveForLater: false,
    // index: 1,
  ),
  CartItemView(
    imageString: 'assets/images/cart/shoe1.png',
    priceNow: '599',
    originalPrice: '1299',
    productName: 'Air Max 90-EZ Black 6',
    saveForLater: false,
    // index: 1,
  ),
];

class CartSubScreen extends StatefulWidget {
  const CartSubScreen({super.key});

  @override
  State<CartSubScreen> createState() => _CartSubScreenState();
}

class _CartSubScreenState extends State<CartSubScreen> {
  @override
  Widget build(BuildContext context) {
    // listRefresh();
    double displayWidth = MediaQuery.of(context).size.width;
    return Material(
      child: Stack(
        children: [
          Container(
            color: Colors.grey,
            child: Row(
              children: const [
                Text(
                  '  My Cart',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Grandis Extended',
                    fontWeight: FontWeight.w600,
                    // letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Container(
              width: displayWidth,
              margin: EdgeInsets.only(
                left: displayWidth * 0.025,
                right: displayWidth * 0.025,
                top: displayWidth * 0.02,
              ),
              // color: Color.fromARGB(71, 158, 158, 158),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: itemList,
                  ),
                  MarginLine(lineWidth: displayWidth * 0.7),
                  Column(
                    children: itemBuyLater,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
