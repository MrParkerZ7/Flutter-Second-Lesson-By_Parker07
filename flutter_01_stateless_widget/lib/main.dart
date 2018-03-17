import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyStatelessWidget(),
  ));
}

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Stateless Widget'),
      ),
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment
              .stretch, // This line make column fit wide parent
          children: <Widget>[
            new MyCard(
              title: new Text('Gas Station'),
              icon: new Icon(
                Icons.local_gas_station,
                color: Colors.red,
              ),
            ),
            new MyCard(
              title: new Text('First Time'),
              icon: new Icon(
                Icons.timer,
                color: Colors.blue,
              ),
            ),
            new MyCard(
              title: new Text('Some Week'),
              icon: new Icon(
                Icons.weekend,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final Widget title;
  final Widget icon;

  MyCard({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Card(
        child: new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Column(
            children: <Widget>[
              this.title,
              this.icon,
            ],
          ),
        ),
      ),
    );
  }
}
