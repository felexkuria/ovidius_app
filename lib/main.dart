import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:budget_app/screens/incomeScreen.dart';
import 'package:budget_app/screens/expensesScreen.dart';
import 'package:budget_app/screens/mainScreen.dart';

void main() {
  runApp(HomeScreen());
  Firebase.initializeApp();
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (ctx) => MainScreen(),
        IncomeScreen.routeName: (ctx) => IncomeScreen(),
        ExpenseScreen.routeName: (ctx) => ExpenseScreen(),
      },
    );
  }
}
