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
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            const Spacer(),
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 10.0),
              height: 300,
              child: Lottie.asset(cartSlidingOnPhone),
            ),
            // const SizedBox(height: 24.0),
            const Spacer(),
            const Text(
              "Login",
              style: TextStyle(
                fontFamily: "Josefin Sans",
                fontWeight: FontWeight.w800,
                fontSize: 42.0,
              ),
            ),
            const SizedBox(height: 24.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  inputTextAuthPage(
                    hintText: "Email",
                    iconOnLeft: Icons.alternate_email,
                    iconColor: Colors.blue,
                    inputType: TextInputType.emailAddress,
                    textController: TextEditingController(),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Stack(
                    children: [
                      inputTextAuthPage(
                        textController: TextEditingController(),
                        inputType: TextInputType.text,
                        hintText: "Password",
                        iconOnLeft: Icons.lock_outline_rounded,
                        iconColor: Colors.blue,
                        obscore: true,
                      ),
                      Container(
                        height: 55,
                        padding: const EdgeInsets.only(right: 15.0),
                        alignment: Alignment.centerRight,
                        child: const embadedTextClickable_W(
                          lableText: "Forget?",
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 24.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => HomeScreenPersonal()));
                    },
                    child: const roundedEdgeButton(
                      buttonHeight: 50,
                      buttonWidth: 350,
                      lableText: "Login",
                      lableTextStyle: regulatInnerButtonStyle,
                      buttonEdgeRadius: 12,
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  const Text(
                    "Or, login with...",
                    style: regularPageNote,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24.0),
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
            const Spacer(),
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
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
