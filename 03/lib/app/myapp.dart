import 'package:flutter/material.dart';
import 'package:nguyenminhvuong_6451071090_btlt6/screens/home_screens.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}