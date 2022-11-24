import 'package:flutter/material.dart';
import 'package:inshop/pages/HomeScreenSubPages/cart.dart';
import 'package:inshop/pages/HomeScreenSubPages/home_.dart';
import 'package:inshop/pages/HomeScreenSubPages/navbarUtils.dart';
import 'package:inshop/pages/HomeScreenSubPages/orders.dart';
import 'package:inshop/pages/HomeScreenSubPages/profile.dart';
import 'package:inshop/utils/colors.dart';
import 'package:inshop/utils/properties.dart';
import 'package:inshop/utils/widgets.dart';

var currentIndex = 0;
var PagesData = [
  HomeSubScreen(),
  OrdersSubScreen(),
  CartSubScreen(),
  ProfileSubScreen(),
];

class HomeScreenPersonal extends StatefulWidget {
  const HomeScreenPersonal({super.key});

  @override
  State<HomeScreenPersonal> createState() => _HomeScreenPersonalState();
}

class _HomeScreenPersonalState extends State<HomeScreenPersonal> {
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Material(
          child: Stack(
            children: [
              PagesData[currentIndex],
              // BottomNavigationBarCustom(),
              Column(
                children: [
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.1),
                          blurRadius: 30,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    margin: EdgeInsets.all(displayWidth * .05),
                    height: displayWidth * 0.140,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(),
                        //
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              currentIndex = 0;
                            });
                          },
                          child: currentIndex == 0
                              ? NavBarSelectedItem(
                                  iconSelected: Icons.home,
                                )
                              : NavBarNotSelectedItem(
                                  icon: Icons.home,
                                ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () async {
                            // currentIndex = 1;
                            setState(() {
                              currentIndex = 1;
                            });
                          },
                          child: currentIndex == 1
                              ? NavBarSelectedItem(
                                  iconSelected: Icons.shopping_bag_outlined,
                                )
                              : NavBarNotSelectedItem(
                                  icon: Icons.shopping_bag_outlined,
                                ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            // currentIndex = 2;
                            setState(() {
                              currentIndex = 2;
                            });
                          },
                          child: currentIndex == 2
                              ? NavBarSelectedItem(
                                  iconSelected: Icons.shopping_cart,
                                )
                              : NavBarNotSelectedItem(
                                  icon: Icons.shopping_cart,
                                ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () async {
                            // currentIndex = 3;
                            setState(() {
                              currentIndex = 3;
                            });
                          },
                          child: currentIndex == 3
                              ? NavBarSelectedItem(
                                  iconSelected: Icons.person_rounded,
                                )
                              : NavBarNotSelectedItem(
                                  icon: Icons.person_rounded,
                                ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
