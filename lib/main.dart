import 'package:flutter/material.dart';
import 'assets/ECImage.dart';
import './page/GoodsList.dart';

void main() => runApp(MaterialApp(
      theme: new ThemeData(primaryColor: Colors.black),
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  handleRoute() {
    Navigator.push(context, new MaterialPageRoute<void>(
      builder: (BuildContext context) {
        return new GoodsList();
      },
    ));
  }

  Widget showItem(String imgIndex, String itemName, String itemPrice) {
    return new GestureDetector(
      onTap: () => handleRoute(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ECImage.item(imgIndex),
          new Text(
            itemName,
            style: new TextStyle(
                fontSize: 14.00,
                color: Colors.black54,
                decoration: TextDecoration.none),
          ),
          new Text("￥ " + itemPrice,
              style: new TextStyle(
                  fontSize: 14.00,
                  color: Colors.red,
                  decoration: TextDecoration.none))
        ],
      ),
    );
  }

  Widget showItems() {
    return new Container(
        height: 220.00,
        color: Colors.white,
        child: new Column(
          children: <Widget>[
            new Container(
              padding:
                  const EdgeInsets.only(left: 16.00, top: 10.00, bottom: 10.00),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Text("限时抢鲜",
                      style: new TextStyle(
                          fontSize: 20.00,
                          color: Colors.black,
                          decoration: TextDecoration.none)),
                ],
              ),
            ),
            new Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.00),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  showItem("1", "阳澄湖大闸蟹22", "49:00"),
                  showItem("2", "速冻优美小龙虾", "49:00"),
                  showItem("1", "阳澄湖大闸蟹", "49:00"),
                ],
              ),
            ),
          ],
        ));
  }

  Widget showSeparator() {
    return new Container(
      height: 10.00,
      color: Colors.grey[200],
    );
  }

  Widget showCategory(String imageIndex, String cateName) {
    return new Container(
        child: new Column(children: <Widget>[
          ECImage.category(imageIndex),
          new Text(
            cateName,
            style: new TextStyle(
                fontSize: 12.00,
                color: Colors.grey,
                decoration: TextDecoration.none),
          )
        ]),
        height: 80.00);
  }

  Widget showCategorys() {
    return new Container(
      padding: const EdgeInsets.symmetric(horizontal: 32.00, vertical: 10.00),
      color: Colors.white,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          showCategory("1", "新鲜花卉"),
          showCategory("2", "新鲜水果"),
          showCategory("3", "海鲜水产"),
          showCategory("4", "积分兑换"),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new SingleChildScrollView(
        child: new ConstrainedBox(
      constraints: new BoxConstraints(
          // minHeight: viewportConstraints.maxHeight,
          ),
      // color: Colors.grey,
      child: new Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ECImage.banner(),
          showCategorys(),
          showSeparator(),
          showItems(),
          showSeparator(),
          showItems(),
          showSeparator(),
          showItems(),
          showSeparator(),
          showItems(),
          showSeparator(),
        ],
      ),
    ));
  }
}
