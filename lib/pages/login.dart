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
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              'Iniciar sesion',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: MediaQuery.of(context).textScaleFactor * 24,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Column(
              children: [
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Correo electronico',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                  validator: validateEmail,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                  validator: validateEmail,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: 200,
              height: 50,
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
                  print("Hola Raised Button");
                },
              ),
            ),
          ),
        ],
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
