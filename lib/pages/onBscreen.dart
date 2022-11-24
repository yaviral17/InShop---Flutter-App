import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inshop/pages/loginScreen.dart';
import 'package:inshop/utils/imageStrings.dart';
import 'package:inshop/utils/properties.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:inshop/utils/appStrings.dart';
import 'package:lottie/lottie.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Lottie.asset(girlWithBox),
        // title: onBoardScreen1Title,
        bodyWidget: Text(
          onBoardScreen1Disc,
          style: onBoardText2,
          textAlign: TextAlign.center,
        ),
        titleWidget: Text(
          onBoardScreen1Title,
          style: onBoardText1,
          textAlign: TextAlign.center,
        ),
      ),
      PageViewModel(
        image: Lottie.asset(itemInCart),
        bodyWidget: Text(
          onBoardScreen2Disc,
          style: onBoardText2,
          textAlign: TextAlign.center,
        ),
        titleWidget: Text(
          onBoardScreen2Title,
          style: onBoardText1,
          textAlign: TextAlign.center,
        ),
      ),
      PageViewModel(
        image: Lottie.asset(securePayment),
        bodyWidget: Text(
          onBoardScreen3Disc,
          style: onBoardText2,
          textAlign: TextAlign.center,
        ),
        titleWidget: Text(
          onBoardScreen3Title,
          style: onBoardText1,
          textAlign: TextAlign.center,
        ),
      ),
      PageViewModel(
        image: Lottie.asset(packageTracking),
        bodyWidget: Text(
          onBoardScreen4Disc,
          style: onBoardText2,
          textAlign: TextAlign.center,
        ),
        titleWidget: Text(
          onBoardScreen4Title,
          style: onBoardText1,
          textAlign: TextAlign.center,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: IntroductionScreen(
        done: Text(
          'Done',
          style: TextStyle(color: Colors.blue),
        ),
        pagesAxis: Axis.horizontal,
        next: Container(
          alignment: Alignment.center,
          width: 80,
          height: 24,
          decoration: BoxDecoration(color: Colors.transparent),
          child: Text('Next'),
        ),
        onDone: () {
          Navigator.push(context,
              CupertinoPageRoute(builder: (context) => loginScreen_()));
        },
        pages: getPages(),
        globalBackgroundColor: Colors.white,
      ),
    );
  }
}
