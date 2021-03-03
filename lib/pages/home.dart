import 'package:flutter/material.dart';
import 'package:GestureApp/pages/card.dart' as car;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          children: [
            car.Card("assets/images/laura.jpg", "Mary Lopez",
                "5 review 8 photos", "There is an amazing app")
          ],
        ));
  }
}
