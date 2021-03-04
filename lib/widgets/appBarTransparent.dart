import 'package:flutter/material.dart';

class AppBarTransparent extends StatelessWidget implements PreferredSize {
  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
  @override
  Size get preferredSize => const Size.fromHeight(70);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      brightness: Brightness.light,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
