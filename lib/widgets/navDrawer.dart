import 'package:flutter/material.dart';
import 'package:budget_app/screens/mainScreen.dart';
import 'package:budget_app/widgets/NavTile.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Colors.pink,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        child: Icon(Icons.person),
                        backgroundColor: Colors.black,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Felex Kuria",
                        //style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.cloud_upload_outlined,
                        size: 30,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.cloud_download_outlined,
                        size: 30,
                        color: Colors.white,
                      ),
                    ],
                  )
                ],
              ),
            ),
            NavTile(
              iconData: Icons.shopping_bag_outlined,
              text: 'Shopping List',
              onPressed: () {},
            ),
            NavTile(
              iconData: Icons.monetization_on_outlined,
              text: 'Budget',
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => MainScreen()));
              },
            ),
            NavTile(
              iconData: Icons.calendar_today_outlined,
              text: 'Calendar',
              onPressed: () {},
            ),
            NavTile(
              iconData: Icons.money_off,
              text: 'Expenses',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
