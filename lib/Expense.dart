// TODO Implement this library.
import 'package:flutter/material.dart';

class Expense extends StatelessWidget
{int bal=9000;
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
                Text("Expense Section",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)
              ],
            )
          ],
        ),
      ),
    );
}}