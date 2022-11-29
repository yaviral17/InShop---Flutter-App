import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../utils/colors.dart';
import '../../utils/properties.dart';

class ProfileSubScreen extends StatefulWidget {
  const ProfileSubScreen({super.key});

  @override
  State<ProfileSubScreen> createState() => ProfileSubScreenState();
}

class ProfileSubScreenState extends State<ProfileSubScreen> {
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60),
              child: Column(
                children: [
                  Row(
                    children: [
                      Spacer(),
                      Column(
                        children: [
                          Container(
                            width: displayWidth * 0.4,
                            height: displayWidth * 0.4,
                            // padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(displayWidth),
                              border: Border.all(
                                  color: Color.fromARGB(110, 130, 130, 130)),
                            ),
                            child: Image.asset('assets/images/user_image.png'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Geek Zone',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Grandis Extended',
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                  Container(
                    width: displayWidth,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.shopping_bag,
                              size: 28,
                              color: Colors.blue,
                            ),
                            Text(
                              'Orders',
                              style: TextStyle(
                                  color: navbarSelected,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: displayWidth,
              height: 52,
              decoration: const BoxDecoration(
                color: defaultWhite,
                boxShadow: [BoxShadow(blurRadius: 10, color: defaultWhite)],
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 10, left: 16),
                child: const Text(
                  'Menue',
                  style: pageTitle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
