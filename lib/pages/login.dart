import 'package:flutter/material.dart';
import 'package:GestureApp/widgets/appBarTransparent.dart';
import 'package:GestureApp/constant/constant.dart';

class Login extends StatelessWidget {
  TextEditingController emailController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundApp,
      appBar: AppBarTransparent(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20), //Falta resposive
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .06),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Iniciar sesion',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: titleColor,
                  fontSize: MediaQuery.of(context).textScaleFactor * 40,
                  fontWeight: fontweightTitle,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .06),
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                focusColor: Colors.amber,
                labelText: 'Correo electronico',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
              validator: validateEmail,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
              validator: validateEmail,
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
                    color: colorTextButton,
                    fontSize: MediaQuery.of(context).textScaleFactor * 16,
                  ),
                ),
                color: backgroundButton,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, 'home', (Route<dynamic> route) => false);
                },
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .04),
          ],
        ),
      ),
    );
  }

  String validateEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "El correo es necesario";
    } else if (!regExp.hasMatch(value)) {
      return "Correo invalido";
    } else {
      return null;
    }
  }
}
