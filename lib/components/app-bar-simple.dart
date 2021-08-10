import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class AppBarSimple extends StatelessWidget with PreferredSizeWidget {
  final String title;
  AppBarSimple({this.title = 'Car (News & E-Commerce)'});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Platform.isIOS ? Colors.amber : Colors.redAccent,
      title: Text(
        title,
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontSize: 20,
            fontStyle: FontStyle.italic,
            fontFamily: 'DancingScript'),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
