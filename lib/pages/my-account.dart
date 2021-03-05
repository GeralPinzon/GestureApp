import 'package:flutter/material.dart';

import 'package:GestureApp/widgets/appBarTransparent.dart';

class MyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTransparent(),
      body: Container(
        child: Text("Mi cuenta"),
      ),
    );
  }
}
