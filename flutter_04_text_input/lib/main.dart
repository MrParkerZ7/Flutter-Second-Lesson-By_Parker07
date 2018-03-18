import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyTextInput(),
  ));
}

class MyTextInput extends StatefulWidget {
  @override
  MyTextInputState createState() => new MyTextInputState();
}

class MyTextInputState extends State<MyTextInput> {
  final TextEditingController controller = new TextEditingController();

  String result = 'Name User';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Text Input'),
        backgroundColor: Colors.deepOrange,
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Icon(
                Icons.people,
                color: Colors.blue,
                size: 70.0,
              ),
              new TextField(
                // Decoration for something to full fill
                decoration: new InputDecoration(
                  hintText: "fill your name!",
                ),
                // Use for action after submit
                onSubmitted: (String str) {
                  setState(() {
                    result = str;
                  });
                  controller.text = '';
                },
                // Use for action control
                controller: controller,
              ),
              new Padding(
                padding: new EdgeInsets.all(10.0),
                child: new Text(result),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
