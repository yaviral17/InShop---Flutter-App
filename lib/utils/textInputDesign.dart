import 'package:flutter/material.dart';

import 'colors.dart';

class inputTextAuthPage extends StatelessWidget {
  final String hintText;
  final IconData iconOnLeft;
  final Color iconColor;
  final TextInputType inputType;
  final TextEditingController textController;
  final bool obscore;
  inputTextAuthPage({
    super.key,
    required this.hintText,
    required this.iconOnLeft,
    this.iconColor = Colors.grey,
    this.inputType = TextInputType.text,
    required this.textController,
    this.obscore = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      padding: const EdgeInsets.only(top: 6, left: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 7.0,
          ),
        ],
      ),
      child: TextFormField(
        controller: textController,
        obscureText: obscore,
        keyboardType: inputType,
        decoration: InputDecoration(
          prefixIcon: Icon(
            iconOnLeft,
            color: iconColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            height: 1,
          ),
        ),
      ),
    );
  }
}

class searchBarTextField extends StatelessWidget {
  final String hintText;
  final IconData iconOnLeft;
  final Color iconColor;
  final TextInputType inputType;
  final TextEditingController textController;
  final bool obscore;
  searchBarTextField({
    super.key,
    required this.hintText,
    required this.iconOnLeft,
    this.iconColor = Colors.grey,
    this.inputType = TextInputType.text,
    required this.textController,
    this.obscore = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.0,
      padding: const EdgeInsets.only(top: 1, left: 10),
      decoration: BoxDecoration(
        color: textFieldBackgroundLightGrey,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: TextFormField(
        controller: textController,
        obscureText: obscore,
        keyboardType: inputType,
        cursorHeight: 18,
        decoration: InputDecoration(
          prefixIcon: Icon(
            iconOnLeft,
            color: iconColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            height: 1,
          ),
        ),
      ),
    );
  }
}
