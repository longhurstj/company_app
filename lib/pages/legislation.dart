import 'package:flutter/material.dart';

import '../classes/drawer.dart';
import 'main_page.dart';

class Legislation extends StatefulWidget {
  const Legislation({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Legislation> createState() => _Legislation();
}

class _Legislation extends State<Legislation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Legislation")),
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
