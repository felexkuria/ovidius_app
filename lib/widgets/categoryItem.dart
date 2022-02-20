import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String projectName;
  final String incomeSource;
  final DateTime date;
  final String addedAmount;
  final Color color;
  const CategoryItem({
    Key? key,
    required this.projectName,
    required this.incomeSource,
    required this.date,
    required this.addedAmount,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow[100],
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1,
            color: Colors.amber.shade900,
          ),
        ),
        child: ListTile(
          title: Text(
            projectName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(incomeSource),
          leading: Text(
            date.year.toString(),
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            addedAmount,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
