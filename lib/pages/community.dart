import 'package:flutter/material.dart';

import '../classes/drawer.dart';
import 'main_page.dart';

class Community extends StatefulWidget {
  const Community({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Community> createState() => _Community();
}

class _Community extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Community")),
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
