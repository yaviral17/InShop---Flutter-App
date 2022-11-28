import 'package:flutter/material.dart';
import 'package:inshop/utils/buttons.dart';
import 'package:inshop/utils/colors.dart';
import 'package:inshop/utils/imageStrings.dart';
import 'package:inshop/utils/properties.dart';
import 'package:inshop/utils/widgets.dart';
import 'package:lottie/lottie.dart';

var itemList = <CartItemView>[
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
    return Stack(
      children: [
        SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: itemList,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding:
                      EdgeInsets.only(top: 4, left: 16, right: 8, bottom: 12),
                  width: displayWidth * 0.95,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(186, 158, 158, 158),
                          spreadRadius: 0.3,
                          blurRadius: 8),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Total Price',
                            style: homesScreenRecommendationTitle,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '3' + ' items',
                            style: priceTextForCard,
                          ),
                          Spacer(),
                          Text(
                            '₹' + '500',
                            style: priceTextForCartTotal,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MarginLine(
                        lineWidth: displayWidth * 0.78,
                        shadowColor: Colors.transparent,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Shipping Address',
                            style: homesScreenRecommendationTitle,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            alignment: Alignment.center,
                            child: Lottie.asset(deliveryTruck),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            'Gali No. 6 Block...'.length > 30
                                ? 'Gali No. 6 Block - A Tulip Road ...'
                                : 'Gali No. 6 Block - A Tulip R',
                            style: priceTextForCard,
                          ),
                          const Spacer(),
                          Container(
                            width: 100,
                            height: 34,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(203, 187, 222, 251),
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: Colors.blue,
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Change',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                      MarginLine(
                        lineWidth: displayWidth * 0.78,
                        shadowColor: Colors.transparent,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Payments Method',
                            style: homesScreenRecommendationTitle,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 30,
                            height: 28,
                            alignment: Alignment.center,
                            child: Lottie.network(
                                'https://assets4.lottiefiles.com/private_files/lf30_wfireqh5.json'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'UPI : ',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          const Text(
                            "yaviral17@okhdfc",
                            style: priceTextForCard,
                          ),
                          const Spacer(),
                          Container(
                            width: 100,
                            height: 34,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(203, 187, 222, 251),
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: Colors.blue,
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Change',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      roundedEdgeButton(
                        lableText: 'Confirm your purchase',
                        buttonHeight: 50,
                        buttonWidth: displayWidth * 0.86,
                        lableTextStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                        buttonEdgeRadius: 12,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: itemBuyLater,
                )
              ],
            ),
          ),
        ),
        Container(
          width: displayWidth,
          height: 52,
          decoration: BoxDecoration(
            color: defaultWhite,
            boxShadow: [BoxShadow(blurRadius: 10, color: defaultWhite)],
          ),
          child: Container(
            margin: EdgeInsets.only(top: 10, left: 16),
            child: Text(
              'My Cart',
              style: pageTitle,
            ),
          ),
        ),
      ],
    );
  }
}
