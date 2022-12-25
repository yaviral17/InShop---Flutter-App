import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inshop/pages/HomeScreen.dart';
import 'package:inshop/pages/HomeScreenPersonal.dart';
import 'package:inshop/pages/registreationScreen.dart';
import 'package:inshop/utils/buttons.dart';
import 'package:inshop/utils/imageStrings.dart';
import 'package:inshop/utils/properties.dart';
import 'package:inshop/utils/textInputDesign.dart';
import 'package:inshop/utils/widgets.dart';
import 'package:lottie/lottie.dart';

class loginScreen_ extends StatefulWidget {
  const loginScreen_({super.key});

  @override
  State<loginScreen_> createState() => _loginScreen_State();
}

class _loginScreen_State extends State<loginScreen_> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var display = MediaQuery.of(context).size;
    return Material(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 10.0),
              height: 300,
              child: Lottie.asset(cartSlidingOnPhone),
            ),
            SizedBox(
              height: display.height * (6 / 100),
            ),
            const Text(
              "Login",
              style: TextStyle(
                fontFamily: "Josefin Sans",
                fontWeight: FontWeight.w800,
                fontSize: 42.0,
              ),
            ),
            SizedBox(
              height: display.height * (2 / 100),
            ),
            Container(
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Container(
                    width: display.width * (85 / 100),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          // spreadRadius: 1,
                          blurRadius: 2,
                        )
                      ],
                    ),
                    child: TextFormField(
                      controller: username,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 16),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: "Email",
                        prefixIcon: Icon(
                          Icons.alternate_email,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: display.height * (2 / 100),
                  ),
                  Stack(
                    children: [
                      Center(
                        child: Container(
                          width: display.width * (85 / 100),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                // spreadRadius: 1,
                                blurRadius: 2,
                              )
                            ],
                          ),
                          child: TextFormField(
                            controller: password,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 16),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              hintText: "Password",
                              prefixIcon: Icon(
                                Icons.lock_outline_rounded,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 44,
                        alignment: Alignment.centerRight,
                        padding:
                            EdgeInsets.only(right: display.width * (8 / 100)),
                        child: TextButton(
                          onPressed: () {},
                          child: Text("Forget?"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: display.height * (2 / 100),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => HomeScreenPersonal()));
                    },
                    child: roundedEdgeButton(
                      buttonHeight: 48,
                      buttonWidth: display.width*(60/100),
                      lableText: "Login",
                      lableTextStyle: regulatInnerButtonStyle,
                      buttonEdgeRadius: 12,
                    ),
                  ),
                  SizedBox(
                    height: display.height * (2 / 100),
                  ),
                  const Text(
                    "Or, login with...",
                    style: regularPageNote,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: display.height * (2 / 100),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                authIcons(
                  innerImage: 'assets/images/google_logo.png',
                ),
                SizedBox(
                  width: 12,
                ),
                authIcons(
                  innerImage: 'assets/images/facebook_logo.png',
                ),
                SizedBox(
                  width: 12,
                ),
                authIcons(
                  innerImage: 'assets/images/apple_logo.png',
                ),
              ],
            ),
            SizedBox(
              height: display.height * (5 / 100),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('New to InShop?  '),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => RegistrationScreen()));
                  },
                  child: embadedTextClickable_W(lableText: "Register"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
