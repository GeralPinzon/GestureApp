import 'package:flutter/material.dart';

import 'package:GestureApp/widgets/appBarTransparent.dart';
import 'package:GestureApp/constant/constant.dart';

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundApp,
      appBar: AppBarTransparent(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                "GESTUREAPP",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).textScaleFactor * 40,
                  fontWeight: fontweightTitle,
                  color: titleColor,
                ),
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.08,
              child: RaisedButton(
                elevation: elevationButton,
                child: Text(
                  "Iniciar Sesion",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).textScaleFactor * 16,
                    color: colorTextButton,
                  ),
                ),
                color: backgroundButton,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'login');
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.08,
              child: RaisedButton(
                elevation: elevationButton,
                child: Text(
                  "Registrarse",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).textScaleFactor * 16,
                    color: colorTextButton,
                  ),
                ),
                color: backgroundButton,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'register');
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
