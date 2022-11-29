import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/properties.dart';
import '../../utils/widgets.dart';

var activestat = true;

class OrdersSubScreen extends StatefulWidget {
  const OrdersSubScreen({super.key});

  @override
  State<OrdersSubScreen> createState() => _OrdersSubScreenState();
}

class _OrdersSubScreenState extends State<OrdersSubScreen> {
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Material(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: 60 + 10 + 52),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        MyOrderStatusCard(
                          orderID: "#1IDH48DH",
                          TotalBill: 500,
                          numberOfItems: 3,
                          orderStatus: 'Arriving tomorrow',
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        MyOrderStatusCard(
                          orderID: "#1IDH48DH",
                          TotalBill: 500,
                          numberOfItems: 3,
                          orderStatus: 'Arriving tomorrow',
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        MyOrderStatusCard(
                          orderID: "#1IDH48DH",
                          TotalBill: 500,
                          numberOfItems: 3,
                          orderStatus: 'Arriving tomorrow',
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        MyOrderStatusCard(
                          orderID: "#1IDH48DH",
                          TotalBill: 500,
                          numberOfItems: 3,
                          orderStatus: 'Arriving tomorrow',
                        ),
                        SizedBox(
                          height: 12,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 78,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 60, bottom: 5),
            width: displayWidth,
            decoration: BoxDecoration(
              color: defaultWhite,
              boxShadow: [
                BoxShadow(color: defaultWhite, spreadRadius: 2, blurRadius: 10),
              ],
            ),
            child: Row(
              children: [
                Spacer(),
                InkWell(
                  onTap: () async {
                    setState(() {
                      activestat = true;
                      // print(activestat);
                    });
                  },
                  child: MyOrderNav(
                    innderLable: 'Active',
                    widgetWidth: displayWidth / 2 * 0.9,
                    widgetHeight: 48,
                    selected: activestat,
                    bgColor: activestat
                        ? Color.fromARGB(255, 160, 212, 255)
                        : Colors.transparent,
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () async {
                    setState(() {
                      activestat = false;
                      // print(activestat);
                    });
                  },
                  child: MyOrderNav(
                    innderLable: 'Completed',
                    widgetWidth: displayWidth / 2 * 0.9,
                    widgetHeight: 48,
                    selected: !activestat,
                    bgColor: !activestat
                        ? Color.fromARGB(255, 160, 212, 255)
                        : Colors.transparent,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          Container(
            width: displayWidth,
            height: 52,
            decoration: const BoxDecoration(
              color: defaultWhite,
              boxShadow: [BoxShadow(blurRadius: 10, color: defaultWhite)],
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 10, left: 16),
              child: const Text(
                'My Orders',
                style: pageTitle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
