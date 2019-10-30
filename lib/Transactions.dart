import 'package:flutter/material.dart';
class Transactions extends StatelessWidget{
  int bal=900;
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
                Text("Transaction Section",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)
              ],
            )
          ],
        ),
      ),
    );
  }
}