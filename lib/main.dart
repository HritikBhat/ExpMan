import 'package:flutter/material.dart';
import 'package:expman/Expense.dart';
import 'package:expman/Transactions.dart';
import 'package:expman/Home.dart';

import 'Constants.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  int _currentIndex = 0;

  List<Widget> _tabList = [
    Home(),
    Expense(),
    Transactions()
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _tabList.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  selectedChoice(String ch){ debugPrint(ch);}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 1.25),),
        centerTitle: true,
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: selectedChoice,
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
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: _tabList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (currentIndex){

          setState(() {
            _currentIndex = currentIndex;
            switch(_currentIndex){
              case 0:
                widget.title= "Home";
                break;
              case 1:
                widget.title= "Expense";
                break;
              case 2:
                widget.title= "Transaction";
                break;
            }
          });

          _tabController.animateTo(_currentIndex);
          //_tabController.index=_currentIndex;
        },
        items: [
          new BottomNavigationBarItem(icon: new Icon(Icons.home), title: new Text("Home")),
          new BottomNavigationBarItem(icon: new Icon(Icons.payment), title: new Text("Expense"),),
          new BottomNavigationBarItem(icon: new Icon(Icons.attach_money), title: new Text("Transaction")),
        ],
      ),
    );
  }
}


