import 'package:flutter/material.dart';

import '../classes/drawer.dart';
import 'main_page.dart';

class ProductsServices extends StatefulWidget {
  const ProductsServices({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ProductsServices> createState() => _ProductsServices();
}

class _ProductsServices extends State<ProductsServices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Products & Services")),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MainPage(
                            title: '',
                          )),
                );
              },
              child: const Text('Home'))),
      drawer: const MyDrawer(),
    );
  }
}
