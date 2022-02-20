import 'package:flutter/material.dart';
import 'package:budget_app/model/income.dart';
import 'package:budget_app/screens/expensesScreen.dart';
import 'package:budget_app/widgets/categoryItem.dart';
import 'package:budget_app/widgets/navDrawer.dart';
import 'package:budget_app/widgets/textContainer.dart';

import '../data.dart';

class IncomeScreen extends StatefulWidget {
  static const routeName = "categoryScreen";

  @override
  _IncomeScreenState createState() => _IncomeScreenState();
}

class _IncomeScreenState extends State<IncomeScreen> {
  TextEditingController incomeTitle = TextEditingController();

  TextEditingController nameTitle = TextEditingController();

  TextEditingController amountTitle = TextEditingController();

  TextEditingController incomeDesc = TextEditingController();

  var conter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Income"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Income",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ...categoryData
                .map((income) => CategoryItem(
                      projectName: income.title!,
                      incomeSource: income.sourceOfIncome!,
                      date: income.datetimeAdded!,
                      addedAmount: "+Ksh ${income.amount}",
                      color: Colors.teal,
                    ))
                .toList()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal.shade700,
        onPressed: () {
          showBottomSheet(context);
        },
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }

  Future<dynamic> showBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (ctx) => Form(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "Add Income Data",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextContainer(
                        hintText: ' Income Title',
                        controller: incomeTitle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextContainer(
                        hintText: 'Name of Whom Paid You',
                        controller: nameTitle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextContainer(
                        hintText: 'Amount  Paided',
                        controller: amountTitle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextContainer(
                        hintText: 'income Description',
                        controller: incomeDesc,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              categoryData.add(Income(
                                  title: incomeTitle.text,
                                  content: incomeDesc.text,
                                  sourceOfIncome: nameTitle.text,
                                  datetimeAdded: DateTime.now(),
                                  datetimeDue: DateTime.now(),
                                  amount: int.parse(amountTitle.text),
                                  invNumber: "invNumber-200144"));
                            });
                            expenseData.forEach((element) {
                              conter += element.amount!;
                              print(conter);
                            });
                            Navigator.of(context).pop(conter);
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.teal.shade200),
                          ),
                          child: Text(
                            "Submit",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ));
  }
}
