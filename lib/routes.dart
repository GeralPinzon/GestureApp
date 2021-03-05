import 'package:flutter/material.dart';
import 'package:GestureApp/pages/login.dart';
import 'package:GestureApp/pages/home.dart';
import 'package:GestureApp/pages/register.dart';
import 'package:GestureApp/pages/principal.dart';
import 'package:GestureApp/pages/my-account.dart';

Map<String, Widget Function(BuildContext)> routes = {
  'login': (BuildContext context) => Login(),
  'home': (BuildContext context) => Home(),
  'register': (BuildContext context) => Register(),
  'principal': (BuildContext context) => Principal(),
  'myAccount': (BuildContext context) => MyAccount(),
  '/': (BuildContext context) => Login(),
};
