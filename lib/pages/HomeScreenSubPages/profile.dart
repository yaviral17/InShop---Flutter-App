import 'package:flutter/material.dart';

class ProfileSubScreen extends StatefulWidget {
  const ProfileSubScreen({super.key});

  @override
  State<ProfileSubScreen> createState() => ProfileSubScreenState();
}

class ProfileSubScreenState extends State<ProfileSubScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Text(
            'Profile',
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
