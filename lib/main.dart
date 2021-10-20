import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ovidius_app/screens/scoreScreen.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {"/": (context) => ScoreScreen()},
    );
  }
}
