import 'package:flutter/material.dart';
import 'package:inshop/utils/properties.dart';

class embadedTextClickable_W extends StatelessWidget {
  final String lableText;
  const embadedTextClickable_W({
    super.key,
    required this.lableText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        lableText,
        style: embadedTextClickAble,
      ),
    );
  }
}

class roundedEdgeButton extends StatelessWidget {
  String lableText;
  double buttonHeight;
  double buttonWidth;
  Color buttonBackgroundColor;
  TextStyle lableTextStyle;
  double buttonEdgeRadius;
  roundedEdgeButton({
    super.key,
    required this.lableText,
    required this.buttonHeight,
    required this.buttonWidth,
    this.buttonBackgroundColor = Colors.blue,
    required this.lableTextStyle,
    this.buttonEdgeRadius = 24,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonHeight,
      alignment: Alignment.center,
      width: buttonWidth,
      decoration: BoxDecoration(
        color: buttonBackgroundColor,
        borderRadius: BorderRadius.circular(
          buttonEdgeRadius,
        ),
      ),
      child: Text(
        lableText,
        style: lableTextStyle,
      ),
    );
  }
}
