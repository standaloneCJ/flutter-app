import 'package:flutter/material.dart';
import '../assets/ECImage.dart';

class GoodsList extends StatefulWidget {
  @override
  _GoodsListState createState() => _GoodsListState();
}

class _GoodsListState extends State<GoodsList> {
  
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  @override
  Widget build(BuildContext context) {
    var width = getScreenWidth(context);
    print(width);
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: Container(
          padding: EdgeInsets.all(10.0),
          child: new Wrap(
            spacing: 8.0, 
            runSpacing: 8.0, 
            children: <Widget>[
              ECImage.listItem(width),
              ECImage.listItem(width),
              ECImage.listItem(width),
              ECImage.listItem(width),
              ECImage.listItem(width),
              ECImage.listItem(width),
              ECImage.listItem(width),
              ECImage.listItem(width),
              ECImage.listItem(width),
              ECImage.listItem(width),
            ],
          )),
    );
  }
}
