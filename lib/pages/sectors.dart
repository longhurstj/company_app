import 'package:flutter/material.dart';

import '../classes/drawer.dart';
import 'main_page.dart';

class Sectors extends StatefulWidget {
  const Sectors({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Sectors> createState() => _Sectors();
}

class _Sectors extends State<Sectors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sectors")),
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
