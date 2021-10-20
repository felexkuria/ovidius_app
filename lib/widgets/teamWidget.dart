import 'package:flutter/material.dart';

import 'package:ovidius_app/widgets/flatButton.dart';

class TeamWidget extends StatelessWidget {
  final String teamName;
  final String points;
  final Function addThreePoints;
  final Function addTwoPoints;
  final Function addFreePoints;

  const TeamWidget({
    Key? key,
    required this.teamName,
    required this.points,
    required this.addThreePoints,
    required this.addTwoPoints,
    required this.addFreePoints,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              teamName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              points,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
            ),
            ButtonPoints(
              points: "+3 Points",
              onPressed: addThreePoints,
            ),
            ButtonPoints(
              points: "+2 Points",
              onPressed: addTwoPoints,
            ),
            ButtonPoints(
              points: "Free Throw",
              onPressed: addTwoPoints,
            )
          ],
        )
      ],
    );
  }
}
