import 'package:flutter/material.dart';

class PickColorScreen extends StatelessWidget {
  final List<Map<String, dynamic>> colors = [
    {"name": "Red", "color": Colors.red},
    {"name": "Blue", "color": Colors.blue},
    {"name": "Green", "color": Colors.green},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pick Color")),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          final item = colors[index];

          return ListTile(
            leading: CircleAvatar(
              backgroundColor: item["color"],
            ),
            title: Text(item["name"]),
            onTap: () {
              Navigator.pop(context, item["color"]); // 🔥 trả dữ liệu về
            },
          );
        },
      ),
    );
  }
}