import 'package:flutter/material.dart';
import 'package:GestureApp/constant/constant.dart';
import 'package:GestureApp/widgets/appBarTransparent.dart';

class MyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTransparent(),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Mi cuenta',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: titleColor,
                  fontSize: MediaQuery.of(context).textScaleFactor * 40,
                  fontWeight: fontweightTitle,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Card(
              child: Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage('assets/images/logo.jpg'),
                      height: 80,
                      width: 80,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.04,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Mis datos",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: titleColor,
                                fontSize:
                                    MediaQuery.of(context).textScaleFactor * 20,
                                fontWeight: fontweightTitle,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Editar",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: titleColor,
                                fontSize:
                                    MediaQuery.of(context).textScaleFactor * 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      child: GestureDetector(
                        onTap: () => {print('hola')},
                        child: Icon(
                          Icons.mode_outlined,
                          size: 50,
                        ),
                      ),
                    ),
                  ],
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
                  "Cerrar Sesion",
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
                  Navigator.pushNamed(context, 'principal');
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            )
          ],
        ),
      ),
    );
  }
}
