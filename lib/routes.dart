import 'package:flutter/material.dart';
import 'package:GestureApp/pages/login.dart';
import 'package:GestureApp/pages/home.dart';
import 'package:GestureApp/pages/register.dart';

Map<String, Widget Function(BuildContext)> routes = {
  'loginScreen': (BuildContext context) => Login(),
  'home': (BuildContext context) => Home(),
  'register': (BuildContext context) => Register(),
  '/': (BuildContext context) => Login(),
};
