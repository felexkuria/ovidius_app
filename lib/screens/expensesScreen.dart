import 'package:flutter/material.dart';
import 'package:budget_app/data.dart';
import 'package:budget_app/model/expense.dart';
import 'package:budget_app/widgets/categoryItem.dart';
import 'package:budget_app/widgets/navDrawer.dart';
import 'package:budget_app/widgets/textContainer.dart';

class ExpenseScreen extends StatefulWidget {
  static const routeName = "ExpenseScreen";

  @override
  _ExpenseScreenState createState() => _ExpenseScreenState();
}

class _ExpenseScreenState extends State<ExpenseScreen> {
  TextEditingController expenseTitle = TextEditingController();

  TextEditingController nameTitle = TextEditingController();

  TextEditingController amountTitle = TextEditingController();

  TextEditingController expenseDesc = TextEditingController();
  var conter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Expenses"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Expense",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ...expenseData.map((expense) => CategoryItem(
                  projectName: expense.title!,
                  incomeSource: expense.whoToBePaid!,
                  date: expense.datetimePaided!,
                  addedAmount: " - Ksh ${expense.amount}",
                  color: Colors.redAccent,
                ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent.shade700,
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
                        "Add Expenses Data",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextContainer(
                        hintText: ' Expense Title',
                        controller: expenseTitle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextContainer(
                        hintText: 'Name of Whom to be Paid',
                        controller: nameTitle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextContainer(
                        hintText: 'Amount to be Paid',
                        controller: amountTitle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextContainer(
                        hintText: 'Expense Description',
                        controller: expenseDesc,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              expenseData.add(Expenses(
                                title: expenseTitle.text,
                                content: expenseDesc.text,
                                whoToBePaid: nameTitle.text,
                                datetimePaided: DateTime.now(),
                                datetimeDue: DateTime.now(),
                                amount: int.parse(amountTitle.text),
                                invNumber: "DkTHGB -${DateTime.now().second}",
                                id: 1,
                              ));
                              expenseData.forEach((element) {
                                conter += element.amount!;
                                print(conter);
                              });
                            });
                            Navigator.of(context).pop(conter);
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.amber),
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
