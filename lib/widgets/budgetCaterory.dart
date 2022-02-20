import 'package:flutter/material.dart';
import 'package:budget_app/screens/incomeScreen.dart';
import 'package:budget_app/screens/expensesScreen.dart';

import '../data.dart';

class BudgetCategory extends StatelessWidget {
  final int totalExpenses = expenseData.fold(
      0, (previousValue, element) => previousValue + element.amount!);
  final int totalIncome = categoryData.fold(
      0, (previousValue, element) => previousValue + element.amount!);

  @override
  Widget build(BuildContext context) {
    final int cash = totalIncome - totalExpenses;
    final double percent = totalIncome / totalExpenses;

    return Container(
      //height: 300,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.black54,
        // image: DecorationImage(
        //   image: AssetImage("assets/images/cover.jpg"),
        // ),
      ),
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.teal, width: 2)),
            child: Column(
              children: [
                Text(
                  "Available Budget for October",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(),
                Text(
                  "+ Ksh $cash",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(IncomeScreen.routeName);
            },
            child: Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Income",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "+ Ksh $totalIncome",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(ExpenseScreen.routeName);
            },
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Expenses",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "- Ksh $totalExpenses",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              border:
                                  Border.all(color: Colors.black54, width: 1)),
                          //margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(3),
                          child: Text(
                            "${percent.toStringAsFixed(2)}%",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
        // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //   maxCrossAxisExtent: 200,
        //   crossAxisSpacing: 10,
        //   mainAxisSpacing: 10,
        //   childAspectRatio: 3 / 2,
        // ),
      ),
    );
  }
}
