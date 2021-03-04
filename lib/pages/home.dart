import 'package:flutter/material.dart';
import 'package:GestureApp/pages/card.dart' as car;
import 'package:GestureApp/widgets/appBarTransparent.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
          car.Card("assets/images/laura.jpg", "Mary Lopez", "5 review 8 photos",
              "There is an amazing app"),
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.deepPurple,
        ),
        child: BottomNavigationBar(onTap: (value) => {}, items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text(""),
          ),
        ]),
      ),
    );
  }
}
