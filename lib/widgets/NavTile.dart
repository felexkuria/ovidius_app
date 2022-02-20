import 'package:flutter/material.dart';

class NavTile extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Function onPressed;

  NavTile({
    required this.iconData,
    required this.text,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        color: Colors.black,
        size: 35,
      ),
      title: Text(
        text,
        //style: Theme.of(context).textTheme.headline5,
      ),
      onTap: () => onPressed(),
    );
  }
}
