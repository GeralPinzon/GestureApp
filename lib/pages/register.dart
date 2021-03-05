import 'package:flutter/material.dart';
import 'package:GestureApp/widgets/appBarTransparent.dart';
import 'package:GestureApp/constant/constant.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundApp,
      appBar: AppBarTransparent(),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'Crear cuenta',
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
                  decoration: InputDecoration(
                    labelText: 'Nombre',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .02),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Apellidos',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .02),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Tipo de documento',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .02),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Numero de documento',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .02),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Fecha de nacimiento',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .02),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Sexo',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .02),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Estado civil',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .02),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Tipo de discapacidad',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .02),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Telefono',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .02),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Celular',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .02),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Ciudad',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .02),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Correo Electronico',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .02),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .04),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.08,
                  child: RaisedButton(
                    elevation: elevationButton,
                    child: Text(
                      "Aceptar",
                      style: TextStyle(
                          color: colorTextButton,
                          fontSize:
                              MediaQuery.of(context).textScaleFactor * 16),
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
        ],
      ),
    );
  }
}
