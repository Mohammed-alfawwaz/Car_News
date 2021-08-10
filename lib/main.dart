import 'package:flutter/material.dart';
import 'Views/Home/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News Cars',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
