import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:inshop/pages/HomeScreenPersonal.dart';
import 'package:inshop/utils/colors.dart';
import 'package:inshop/utils/properties.dart';
import 'package:inshop/utils/textInputDesign.dart';

import '../../utils/widgets.dart';

class HomeSubScreen extends StatefulWidget {
  const HomeSubScreen({super.key});

  @override
  State<HomeSubScreen> createState() => _HomeSubScreenState();
}

class _HomeSubScreenState extends State<HomeSubScreen> {
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Material(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: displayWidth * 0.02),
              margin: EdgeInsets.symmetric(horizontal: displayWidth * 0.04),
              child: Row(
                children: [
                  Stack(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Delivery address . Now',
                        // textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                      Column(
                        children: [
                          Text(''),
                          Text(
                            'New Sanjay Nagar, Etah',
                            style: TextStyle(
                              color: navbarSelected,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(''),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: navbarSelected,
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.notifications_outlined,
                    color: navbarNotSelected,
                    size: 28,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: displayWidth * 0.04),
              child: searchBarTextField(
                hintText: 'Try "Headphones"',
                iconOnLeft: Icons.search_rounded,
                textController: TextEditingController(),
              ),
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
              child: Column(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          // margin: EdgeInsets.symmetric(horizontal: displayWidth * 0.04),
                          child: SizedBox(
                            height: 100,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 1,
                              itemBuilder: (context, index) => Row(
                                children: const [
                                  SizedBox(
                                    width: 30,
                                  ),
                                  CircleImageInsideWithOutlineCircleWithBottomText(
                                    innerImage: 'assets/images/laptop.png',
                                    bottomText: "Laptops",
                                    backgroundColor:
                                        Color.fromARGB(69, 87, 39, 176),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  CircleImageInsideWithOutlineCircleWithBottomText(
                                    innerImage: 'assets/images/headphones.png',
                                    bottomText: 'Headphones',
                                    backgroundColor:
                                        Color.fromARGB(69, 39, 176, 62),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  CircleImageInsideWithOutlineCircleWithBottomText(
                                    innerImage: 'assets/images/mouse.png',
                                    bottomText: "Mice",
                                    backgroundColor:
                                        Color.fromARGB(69, 176, 39, 60),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  CircleImageInsideWithOutlineCircleWithBottomText(
                                    innerImage: 'assets/images/keyboard.png',
                                    bottomText: "Keyboards",
                                    backgroundColor:
                                        Color.fromARGB(69, 176, 139, 39),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          // margin: EdgeInsets.symmetric(horizontal: displayWidth * 0.04),
                          child: SizedBox(
                            height: displayWidth * 0.4,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 1,
                              itemBuilder: (context, index) => Row(
                                children: [
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Container(
                                    width: displayWidth * 0.93,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.green),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Container(
                                    width: displayWidth * 0.93,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.green),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Container(
                                    width: displayWidth * 0.93,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.green),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 20,
                                height: 6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Color.fromARGB(193, 76, 175, 79),
                                ),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Container(
                                width: 20,
                                height: 6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Color.fromARGB(82, 76, 175, 79),
                                ),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Container(
                                width: 20,
                                height: 6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Color.fromARGB(82, 76, 175, 79),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 10, left: 18),
                            child: const Text(
                              'Popular Products',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  fontFamily: 'Grandis Extended'),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 5, left: 18),
                            child: const Text(
                              '\n\nMost purchased porducts by people ',
                              // textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.only(right: 18),
                        child: Row(
                          children: const [
                            Text(
                              "See all",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Grandis Extended'),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Icon(Icons.arrow_circle_right),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    // margin: EdgeInsets.symmetric(horizontal: displayWidth * 0.04),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      dragStartBehavior: DragStartBehavior.start,
                      child: Row(
                        children: [
                          ItemBoxWithPriceAndDiscount(),
                          ItemBoxWithPriceAndDiscount(),
                          ItemBoxWithPriceAndDiscount(),
                          ItemBoxWithPriceAndDiscount(),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 10, left: 18),
                            child: const Text(
                              'Categories',
                              style: homesScreenRecommendationTitle,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 5, left: 18),
                            child: const Text(
                              '\n\nWe have variely of categories check it out ',
                              // textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.only(right: 18),
                        child: Row(
                          children: const [
                            Text(
                              "See all",
                              style: homesScreenRecommendationTitle,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Icon(Icons.arrow_circle_right),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    // margin: EdgeInsets.symmetric(horizontal: displayWidth * 0.04),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      dragStartBehavior: DragStartBehavior.start,
                      child: Row(
                        children: [
                          CategoryBox(),
                          CategoryBox(),
                          CategoryBox(),
                          CategoryBox(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: displayWidth,
              height: 55,
              child: Image.asset(
                'assets/images/bottom_end.png',
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemBoxWithPriceAndDiscount extends StatefulWidget {
  const ItemBoxWithPriceAndDiscount({
    super.key,
  });

  @override
  State<ItemBoxWithPriceAndDiscount> createState() =>
      _ItemBoxWithPriceAndDiscountState();
}

class _ItemBoxWithPriceAndDiscountState
    extends State<ItemBoxWithPriceAndDiscount> {
  @override
  Widget build(BuildContext context) {
    String itemName = 'Hp notebook 15 ksdhkasjd sdjahsd dkajs';
    bool favourite = false;
    double displayWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Container(
          padding: EdgeInsets.all(5),
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: displayWidth * 0.017),
                width: 150,
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
                decoration: BoxDecoration(
                  color: Color.fromARGB(237, 255, 255, 255),
                  border: Border.all(
                      color: Color.fromARGB(40, 0, 0, 0),
                      style: BorderStyle.solid),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      color: Color.fromARGB(142, 158, 158, 158),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Spacer(),
                        Text(
                          '5.5',
                          style: TextStyle(
                            color: Color.fromARGB(208, 0, 0, 0),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 0, 149, 15),
                          size: 18,
                          shadows: [
                            Shadow(
                                color: Color.fromARGB(228, 0, 149, 97),
                                blurRadius: 14)
                          ],
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/laptop.png',
                      height: 90,
                    ),
                    Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Laptops',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                itemName.length > 24
                                    ? "${itemName.substring(0, 24)}..."
                                    : itemName,
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              ' ₹' + '38,999',
                              style: TextStyle(
                                color: Color.fromARGB(255, 27, 128, 210),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              ' ₹' + '46,999',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.lineThrough,
                                decorationStyle: TextDecorationStyle.solid,
                                decorationThickness: 2,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: displayWidth * 0.018),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/discount_tag.png',
                      height: 38,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: displayWidth * 0.025,
                          left: displayWidth * 0.024),
                      child: Text(
                        "99%",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // SizedBox(
        //   width: 10,
        // ),
      ],
    );
  }
}

class CategoryBox extends StatefulWidget {
  const CategoryBox({super.key});

  @override
  State<CategoryBox> createState() => CcategoryBoxState();
}

class CcategoryBoxState extends State<CategoryBox> {
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Container(
          padding: EdgeInsets.all(5),
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: displayWidth * 0.017),
                width: 150,
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
                decoration: BoxDecoration(
                  color: Color.fromARGB(237, 255, 255, 255),
                  border: Border.all(
                      color: Color.fromARGB(40, 0, 0, 0),
                      style: BorderStyle.solid),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      color: Color.fromARGB(142, 158, 158, 158),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Spacer(),
                        Text(
                          ' ',
                          style: TextStyle(
                            color: Color.fromARGB(208, 0, 0, 0),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/laptop.png',
                      height: 90,
                    ),
                    Text(
                      'Laptops',
                      textAlign: TextAlign.start,
                      style: categoryCardLableStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // SizedBox(
        //   width: 10,
        // ),
      ],
    );
  }
}
