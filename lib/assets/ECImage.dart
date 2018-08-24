import 'package:flutter/material.dart';

class ECImage {

  static Image banner() {
    return Image.asset('lib/assets/images/banner.png');
  }

  static Image category(String index) {
    return Image.asset('lib/assets/images/category' + index + '.png',width: 50.00, height: 50.00,);
  }

  static Image item(String index) {
    return Image.asset('lib/assets/images/item' + index + '.png',width: 120.00,);
  }

  static Image listItem(double width){
    return Image.asset('lib/assets/images/item1.png', width: (width-28)/2,);
  }
} 