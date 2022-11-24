import 'package:flutter/cupertino.dart';

class item {
  final String imageString;
  final String itemName;
  final String originalPrice;
  final String priceNow;
  final bool saveForLater;
  item({
    required this.imageString,
    required this.itemName,
    required this.originalPrice,
    required this.priceNow,
    required this.saveForLater,
  });
}
