import 'package:flutter/material.dart';

import '../classes/drawer.dart';
import 'main_page.dart';

class Logout extends StatefulWidget {
  const Logout({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Logout> createState() => _Logout();
}

class _Logout extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Logout")),
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
