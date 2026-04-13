import 'package:flutter/material.dart';
import 'package:nguyenminhvuong_6451071090_btlt6/screens/pick_color_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color currentColor = Colors.grey;

  Future<void> pickColor() async {
    final selectedColor = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => PickColorScreen(),
      ),
    );

    if (selectedColor != null) {
      setState(() {
        currentColor = selectedColor;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Box màu
            Container(
              width: 150,
              height: 150,
              color: currentColor,
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: pickColor,
              child: Text("Pick Color"),
            )
          ],
        ),
      ),
    );
  }
}