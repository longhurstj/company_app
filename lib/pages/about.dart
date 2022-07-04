import 'package:flutter/material.dart';

import '../classes/drawer.dart';
import 'main_page.dart';

class About extends StatefulWidget {
  const About({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<About> createState() => _About();
}

class _About extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About")),
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
