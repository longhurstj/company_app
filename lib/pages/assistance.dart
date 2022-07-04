import 'package:flutter/material.dart';

import '../classes/drawer.dart';
import 'main_page.dart';

class Assistance extends StatefulWidget {
  const Assistance({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Assistance> createState() => _Assistance();
}

class _Assistance extends State<Assistance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Assistance")),
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
