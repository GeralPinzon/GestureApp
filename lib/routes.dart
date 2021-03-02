import 'package:flutter/material.dart';
import 'package:GestureApp/pages/login.dart';

Map<String, Widget Function(BuildContext)> routes = {
  'loginScreen': (BuildContext context) => Login(),
  '/': (BuildContext context) => Login(),
};
