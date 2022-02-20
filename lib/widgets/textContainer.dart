import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  const TextContainer({
    Key? key,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.yellow[100],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: Colors.amber.shade900,
        ),
      ),
      child: TextFormField(
        controller: controller,
        // onChanged:  ,
        cursorColor: Colors.amber.shade900,
        style: Theme.of(context).textTheme.bodyText1,
        //cursorHeight: 30,
        decoration: InputDecoration(
          //icon: Icon(Icons.ac_unit_outlined),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(10),
          // labelText: "Rent ",
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
