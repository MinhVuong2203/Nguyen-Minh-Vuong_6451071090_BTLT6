import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nguyenminhvuong_6451071090_btlt6/screens/home_screens.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pick Color App',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}