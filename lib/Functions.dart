import 'package:flutter/material.dart';
import 'Expense.dart';
import 'main.dart';
import 'Transactions.dart';
class Functions{
  navigate_item(int ch,BuildContext context){
    switch(ch){
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Expense()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Transactions()),
        );
        break;
    }
  }
  selectedChoice(String ch){ debugPrint(ch);}
}
