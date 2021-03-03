import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  TextEditingController emailController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20), //Falta resposive
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .04),
            Text(
              'Iniciar sesion',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: MediaQuery.of(context).textScaleFactor * 24,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .04),
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
                elevation: 0,
                disabledColor: Colors.amber,
                child: Text("Iniciar Sesion"),
                splashColor: Colors.amber,
                color: Colors.amber[500],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(color: Colors.red)),
                onPressed: () {
                  Navigator.pushNamed(context, 'home');
                },
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.08,
              child: RaisedButton(
                elevation: 0,
                disabledColor: Colors.amber,
                child: Text("Registrarse"),
                splashColor: Colors.amber,
                color: Colors.amber[500],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(color: Colors.red)),
                onPressed: () {
                  Navigator.pushNamed(context, 'register');
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
