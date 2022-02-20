import 'package:flutter/material.dart';
import 'package:budget_app/widgets/budgetCaterory.dart';
import 'package:budget_app/widgets/navDrawer.dart';

class MainScreen extends StatelessWidget {
  //const MainScreen({Key? key}) : super(key: key);
  final bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          " Budget-Categories  ",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: BudgetCategory(),
    );
  }
}
