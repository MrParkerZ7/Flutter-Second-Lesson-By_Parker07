import 'package:flutter/material.dart';
import 'first-page.dart' as first;
import 'second-page.dart' as second;
import 'third-page.dart' as third;

void main() {
  runApp(new MaterialApp(
    home: new MyTabs(),
  ));
}

class MyTabs extends StatefulWidget {
  @override
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Pages"),
        backgroundColor: Colors.deepOrange,
        bottom: new TabBar(controller: controller, tabs: <Tab>[
          new Tab(icon: new Icon(Icons.hearing)),
          new Tab(icon: new Icon(Icons.hotel)),
          new Tab(icon: new Icon(Icons.motorcycle)),
        ]),
      ),
      body: new TabBarView(controller: controller, children: <Widget>[
        new first.First(),
        new second.Second(),
        new third.Third(),
      ]),
      bottomNavigationBar: new Material(
        color: Colors.deepOrange,
        child: new TabBar(controller: controller, tabs: <Tab>[
          new Tab(icon: new Icon(Icons.hearing)),
          new Tab(icon: new Icon(Icons.hotel)),
          new Tab(icon: new Icon(Icons.motorcycle)),
        ]),
      ),
    );
  }
}
