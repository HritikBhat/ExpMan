import 'package:flutter/material.dart';
import 'Constants.dart';
import 'Functions.dart';
class Transactions extends StatelessWidget{
  int bal=900;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expense",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 1.25),),
        centerTitle: true,
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: (Functions().selectedChoice),
            itemBuilder: (BuildContext context){
              return Constants.choices.map((String choice){
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          )
        ],
      ),
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
      bottomNavigationBar: new BottomNavigationBar(items: [
        new BottomNavigationBarItem(icon: new Icon(Icons.home), title: new Text("Home")),
        new BottomNavigationBarItem(icon: new Icon(Icons.payment), title: new Text("Expense")),
        new BottomNavigationBarItem(icon: new Icon(Icons.attach_money), title: new Text("Transaction")),
      ],selectedItemColor: Colors.white,backgroundColor: Colors.lightBlue, onTap: (int ch){Functions().navigate_item(ch,context);}),
    );
  }
}