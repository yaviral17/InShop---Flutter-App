import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class NavBarSelectedItem extends StatelessWidget {
  IconData iconSelected;
  Color iconColor;
  Color iconBackground;

  NavBarSelectedItem({
    super.key,
    required this.iconSelected,
    this.iconColor = navbarSelected,
    this.iconBackground = navbarSelectedItemBackground,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
          color: navbarSelectedItemBackground,
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          const Spacer(),
          Icon(
            iconSelected,
            color: navbarSelected,
          ),
          // Text(
          //   currentIndex == 0 ? '.' : ' ',
          //   style: homeScreenSelectedIconBottomDot,
          // ),
          const Icon(
            Icons.circle,
            size: 6,
            color: navbarSelected,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class NavBarNotSelectedItem extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  // final IconData icon;
  NavBarNotSelectedItem({
    super.key,
    required this.icon,
    this.iconColor = navbarNotSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        color: iconColor,
      ),
    );
  }
}
