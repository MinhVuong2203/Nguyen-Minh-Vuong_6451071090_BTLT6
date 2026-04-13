import 'package:flutter/material.dart';
import 'package:nguyenminhvuong_6451071090_btlt6/screens/home_screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product App',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}