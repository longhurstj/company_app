import 'package:flutter/material.dart';

import '../classes/drawer.dart';
import 'main_page.dart';

class Services extends StatefulWidget {
  const Services({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Services> createState() => _Services();
}

class _Services extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Services")),
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
