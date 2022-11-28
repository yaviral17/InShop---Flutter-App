import 'package:flutter/material.dart';
import 'package:inshop/pages/HomeScreenPersonal.dart';
import 'package:inshop/pages/loginScreen.dart';
import 'package:inshop/pages/onBscreen.dart';
import 'package:inshop/pages/registreationScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: IntroScreen(),
        ),
      ),
    );
  }
}

class pages extends StatelessWidget {
  const pages({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/first": (context) => loginScreen_(),
        // "/second": (context) => loginScreen_(),
      },
      title: 'navigation page ',
      theme: ThemeData(primaryColor: Colors.blueGrey),
      home: loginScreen_(),
    );
  }
}
