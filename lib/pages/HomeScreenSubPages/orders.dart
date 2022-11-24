import 'package:flutter/material.dart';

class OrdersSubScreen extends StatefulWidget {
  const OrdersSubScreen({super.key});

  @override
  State<OrdersSubScreen> createState() => _OrdersSubScreenState();
}

class _OrdersSubScreenState extends State<OrdersSubScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Text(
            'Orders',
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
