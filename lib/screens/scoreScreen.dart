import 'package:flutter/material.dart';
import 'package:ovidius_app/widgets/teamWidget.dart';
import '../widgets/flatButton.dart';

class ScoreScreen extends StatefulWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  _ScoreScreenState createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  int pointsTeamA = 0;
  int pointsTeamB = 0;

  void addThreePointsTeamA() {
    setState(() {
      pointsTeamA += 3;
    });
  }

  void addTwopointsTeamA() {
    setState(() {
      pointsTeamA += 2;
    });
  }

  void addonepointsTeamA() {
    setState(() {
      pointsTeamA += 1;
    });
  }

  void addThreePointsTeamb() {
    setState(() {
      pointsTeamB += 3;
    });
  }

  void addTwopointsTeamB() {
    setState(() {
      pointsTeamB += 2;
    });
  }

  void addOnepointsTeamB() {
    setState(() {
      pointsTeamB += 1;
    });
  }

  void resetAllPoints() {
    setState(() {
      pointsTeamB = 0;
      pointsTeamA = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Expanded(
                      child: TeamWidget(
                    points: pointsTeamA.toString(),
                    teamName: 'Team A',
                    addThreePoints: addThreePointsTeamA,
                    addFreePoints: addonepointsTeamA,
                    addTwoPoints: addTwopointsTeamA,
                  )),
                  Expanded(
                      child: TeamWidget(
                    teamName: 'Team B',
                    points: pointsTeamB.toString(),
                    addThreePoints: addThreePointsTeamb,
                    addTwoPoints: addTwopointsTeamB,
                    addFreePoints: addOnepointsTeamB,
                  )),

                  // TeamWidget(),
                ],
              ),
              ButtonPoints(
                points: "Reset",
                onPressed: resetAllPoints,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
