import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
          home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text("Ask me Anything"),
          backgroundColor: Colors.blue.shade800,
        ),
        body: Magic(),
      )),
    );

class Magic extends StatefulWidget {
  @override
  _MagicState createState() => _MagicState();
}

class _MagicState extends State<Magic> {
  int magicNum = 1;

  @override
  Widget build(BuildContext context) {
    void magic() {
      setState(() {
        magicNum = Random().nextInt(5) + 1;
      });
    }

    return Center(
      child: Row(children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {
              magic();
            },
            child: Image.asset('images/ball$magicNum.png'),
          ),
        )
      ]),
    );
  }
}
