import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget {
  _MainDrawer createState() => _MainDrawer();
}

class _MainDrawer extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Rohit"),
              accountEmail: Text("rohitkumar120632@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/personlogo.png'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Navigator.of(context).pushNamed('');
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('My Bokkings'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.of(context).pushNamed('');
              },
            )
          ],
        ),
      ),
    );
  }
}
