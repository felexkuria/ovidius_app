import 'package:budget_app/model/expense.dart';
import 'package:budget_app/model/income.dart';

List<Income> categoryData = [
  Income(
    title: "Salary",
    sourceOfIncome: "Afristar Railway Limited Company",
    datetimeAdded: DateTime.now(),
    datetimeDue: DateTime.now(),
    amount: 38000,
    invNumber: "DFV012GHV",
    content: 'Salary for November ',
  ),
  Income(
    title: "Salary",
    sourceOfIncome: "Kimani Kairu Advocates",
    datetimeAdded: DateTime.now(),
    datetimeDue: DateTime.now(),
    amount: 3000,
    invNumber: "DFV012GHV",
    content: 'Paid For Filling Dividend',
  ),
];

List<Expenses> expenseData = [
  Expenses(
    title: "Rent",
    content: "House Rent Kasarani",
    whoToBePaid: "Mofa Enterprise Limited",
    datetimePaided: DateTime.now(),
    datetimeDue: DateTime.now(),
    amount: 11000,
    invNumber: "RDY-2022/11",
    id: 3,
  ),
  Expenses(
    title: "Loan",
    content: "Salary Advance For Six Months",
    whoToBePaid: "Kcb Bank ",
    datetimePaided: DateTime.now(),
    datetimeDue: DateTime.now(),
    amount: 9500,
    invNumber: "RDY-2022/11",
    id: 2,
  ),
  Expenses(
    title: "Loan",
    content: "Leonard Loan for 1 Months",
    whoToBePaid: "Leonard ",
    datetimePaided: DateTime.now(),
    datetimeDue: DateTime.now(),
    amount: 6500,
    invNumber: "RDY-2022/11",
    id: 1,
  ),
];
