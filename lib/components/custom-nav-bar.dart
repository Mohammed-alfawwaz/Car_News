import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavigationBarCurve extends StatelessWidget {
  final int indexPage;
  final void Function(int) onTap;

  NavigationBarCurve({this.indexPage = 0, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        color: Colors.redAccent,
        backgroundColor: Colors.black,
        items: [
          (Icon(
            Icons.car_repair,
          )),
          (Icon(Icons.article)),
          (Icon(Icons.live_tv)),
          (Icon(Icons.graphic_eq))
        ],
        height: 46,
        index: indexPage,
        onTap: onTap);
  }
}
