import 'package:flutter/material.dart';
import 'package:inshop/pages/HomeScreenSubPages/cart.dart';
import 'package:inshop/pages/HomeScreenSubPages/item.dart';
import 'package:inshop/utils/colors.dart';
import 'package:inshop/utils/properties.dart';

// var saveLater = false;

class authIcons extends StatelessWidget {
  final String innerImage;
  const authIcons({
    super.key,
    required this.innerImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 55,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        vertical: 9,
      ),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12)),
      child: Image.asset(innerImage),
    );
  }
}

class CircleImageInsideWithOutlineCircleWithBottomText extends StatelessWidget {
  final String innerImage;
  final String bottomText;
  final Color backgroundColor;
  const CircleImageInsideWithOutlineCircleWithBottomText({
    super.key,
    required this.innerImage,
    this.bottomText = "bottom text",
    this.backgroundColor = navbarSelectedItemBackground,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromARGB(156, 158, 158, 158),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(55),
          ),
          child: Container(
            margin: EdgeInsets.all(2),
            width: 60,
            height: 60,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(
              vertical: 9,
            ),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(55),
            ),
            child: Image.asset(
              innerImage,
              height: 30,
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          bottomText,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

class CartItemView extends StatefulWidget {
  final String imageString;
  final String priceNow;
  final String originalPrice;
  final String productName;
  double numberOfItem;
  bool saveForLater;
  // int index;
  CartItemView({
    super.key,
    required this.imageString,
    required this.priceNow,
    required this.originalPrice,
    required this.productName,
    required this.saveForLater,
    this.numberOfItem = 1,
  });

  @override
  State<CartItemView> createState() => _CartItemViewState();
}

class _CartItemViewState extends State<CartItemView> {
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 14,
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(86, 158, 158, 158),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 80,
                  height: 80,
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Image.asset(
                    widget.imageString,
                  ),
                ),
                ShadowLine(
                  thickness: 1,
                  length: 50,
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    widget.productName,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '₹${widget.priceNow}',
                        style: priceTextFor,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '₹${widget.originalPrice}',
                        style: priceTextCut,
                      ),
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () async {
                      setState(() {
                        if (widget.saveForLater == true) {
                          itemBuyLater.remove(widget);
                          itemList.add(widget);
                          widget.saveForLater = false;
                          print(widget.saveForLater);
                        } else {
                          itemList.remove(widget);
                          itemBuyLater.add(widget);
                          widget.saveForLater = true;
                          print(widget.saveForLater);
                        }
                      });

                      // print(saveLater);
                    },
                    child: Container(
                      // color: Colors.grey,
                      padding: EdgeInsets.only(bottom: 6),
                      child: widget.saveForLater
                          ? Text(
                              'Save for later',
                              style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w600,
                                fontSize: 12.8,
                              ),
                            )
                          : Text(
                              'Add to buy list',
                              style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w600,
                                fontSize: 12.8,
                              ),
                            ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Spacer(),
            SizedBox(
              width: 16,
            ),
            Container(
              height: 26,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(17),
                  border: Border.all(
                    width: 1,
                    color: Colors.blue,
                  )),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                  ),
                ],
              ),
            ),
            Text(
              '  1  ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            Container(
              height: 26,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 81, 177, 255),
                borderRadius: BorderRadius.circular(17),
                border: Border.all(
                  width: 1,
                  color: Colors.transparent,
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                setState(() {});
              },
              child: Container(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.delete_outline,
                  size: 30,
                  color: Color.fromARGB(197, 244, 67, 54),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class MarginLine extends StatelessWidget {
  double lineWidth;
  Color shadowColor;
  MarginLine({
    super.key,
    required this.lineWidth,
    this.shadowColor = Colors.black,
  });
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 1,
      width: lineWidth,
      margin: EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Colors.grey,
        boxShadow: [
          BoxShadow(
            blurRadius: 18,
            color: shadowColor,
          ),
        ],
      ),
    );
  }
}

class ShadowLine extends StatelessWidget {
  final double thickness;
  final double length;

  const ShadowLine({super.key, required this.thickness, required this.length});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 4),
      height: thickness,
      width: length,
      // width: ,
      decoration: BoxDecoration(
        // color: defaultWhite,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(130, 0, 0, 0),
            blurRadius: 5,
            // spreadRadius: 2,
          )
        ],
      ),
    );
  }
}
