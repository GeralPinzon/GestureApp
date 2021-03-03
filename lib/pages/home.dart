import 'package:flutter/material.dart';
import 'package:GestureApp/pages/card.dart' as car;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[500],
        elevation: 0,
      ),
      body: Column(
        children: [
          car.Card("assets/images/laura.jpg", "Mary Lopez", "5 review 8 photos",
              "There is an amazing app"),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('Hola'),
              decoration: BoxDecoration(
                color: Colors.amber[500],
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
