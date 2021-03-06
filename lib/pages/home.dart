import 'package:GestureApp/constant/constant.dart';
import 'package:GestureApp/pages/my-account.dart';
import 'package:GestureApp/pages/register.dart';
import 'package:GestureApp/pages/translate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int indexTap = 1;
  final List<Widget> widgetsChildren = [MyAccount(), Translate(), Register()];

  void onTapTapped(int index) {
    setState(() {
      //controlar estado widget
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3F2FD),
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.deepPurple,
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
          elevation: elevationButton,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                size: 40,
              ),
              title: Text(
                "Mi cuenta",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).textScaleFactor * 14,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.connect_without_contact_outlined,
                size: 40,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).textScaleFactor * 14,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.help_outline_outlined,
                size: 40,
              ),
              title: Text(
                "Ayuda",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).textScaleFactor * 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
