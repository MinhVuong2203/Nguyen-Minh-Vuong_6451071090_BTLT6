import 'package:flutter/material.dart';
import 'package:nguyenminhvuong_6451071090_btlt6/screens/details_screen.dart';
import '../models/product.dart';

class HomeScreen extends StatelessWidget {
  final List<Product> products = [
    Product(name: "iPhone 15", price: 25000000),
    Product(name: "Samsung S24", price: 22000000),
    Product(name: "Xiaomi 14", price: 15000000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final p = products[index];

          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(p.name),
              subtitle: Text("${p.price} VND"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailScreen(product: p),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}