import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  int bal=90000;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Current Month",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Expense: $bal",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)
              ],
            )
          ],
        ),
      ),
    );
  }}