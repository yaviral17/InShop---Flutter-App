import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inshop/pages/loginScreen.dart';
import 'package:inshop/utils/imageStrings.dart';
import 'package:lottie/lottie.dart';

import '../utils/buttons.dart';
import '../utils/properties.dart';
import '../utils/textInputDesign.dart';
import '../utils/widgets.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Spacer(),
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.white)),
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 10.0),
            padding: const EdgeInsets.symmetric(
              horizontal: 36,
            ),
            height: 300,
            child: Lottie.asset(userSignUp),
          ),
          const Spacer(),
          const Text(
            "Sign up",
            style: TextStyle(
              fontFamily: "Josefin Sans",
              fontWeight: FontWeight.w800,
              fontSize: 42.0,
            ),
          ),
          const Spacer(),
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
          const SizedBox(
            height: 8,
          ),
          const Text(
            "Or, register with email...",
            style: regularPageNote,
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                inputTextAuthPage(
                  hintText: "Full name",
                  iconOnLeft: Icons.person_outlined,
                  iconColor: Colors.blue,
                  inputType: TextInputType.text,
                  textController: TextEditingController(),
                ),
                const SizedBox(height: 10),
                inputTextAuthPage(
                  hintText: "Email ID",
                  iconOnLeft: Icons.alternate_email,
                  iconColor: Colors.blue,
                  inputType: TextInputType.emailAddress,
                  textController: TextEditingController(),
                ),
                const SizedBox(height: 10),
                inputTextAuthPage(
                  hintText: "Phone number",
                  iconOnLeft: Icons.phone_android,
                  iconColor: Colors.blue,
                  inputType: TextInputType.phone,
                  textController: TextEditingController(),
                ),
                const SizedBox(height: 10),
                inputTextAuthPage(
                  hintText: "Password",
                  iconOnLeft: Icons.password_rounded,
                  obscore: true,
                  iconColor: Colors.blue,
                  inputType: TextInputType.emailAddress,
                  textController: TextEditingController(),
                ),
                const SizedBox(height: 10),
                inputTextAuthPage(
                  hintText: "Confirm password",
                  iconOnLeft: Icons.password_rounded,
                  obscore: true,
                  iconColor: Colors.blue,
                  inputType: TextInputType.emailAddress,
                  textController: TextEditingController(),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          roundedEdgeButton(
              lableText: 'Submit',
              buttonHeight: 48,
              buttonWidth: 200,
              lableTextStyle: regulatInnerButtonStyle),
          const Spacer(),
        ],
      ),
    );
  }
}
