import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(title: "ExpMan",home: Home(),));
class Constants{
  static const String Subscribe = 'About Us';
  static const String Settings = 'Settings';

  static const List<String> choices = <String>[
    Subscribe,
    Settings,
  ];
}
class Home extends StatelessWidget {
  int bal=90000;
  // This widget is the root of your application.
  _selectedChoice(String ch){ debugPrint(ch);}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 1.25),),
        centerTitle: true,
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: _selectedChoice,
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
      ],selectedItemColor: Colors.white,backgroundColor: Colors.lightBlue, onTap: (int i) => debugPrint("Hey Touched $i"),),
    );
  }}