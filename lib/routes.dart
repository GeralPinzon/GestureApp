import 'package:flutter/material.dart';
import 'package:GestureApp/pages/login.dart';
import 'package:GestureApp/pages/home.dart';

Map<String, Widget Function(BuildContext)> routes = {
  'loginScreen': (BuildContext context) => Login(),
  'home': (BuildContext context) => Home(),
  '/': (BuildContext context) => Login(),
};
