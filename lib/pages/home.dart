import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.08,
        child: RaisedButton(
          elevation: 0,
          disabledColor: Colors.amber,
          child: Text("Iniciar Sesion"),
          splashColor: Colors.amber,
          color: Colors.blueAccent,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
              side: BorderSide(color: Colors.red)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
