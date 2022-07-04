import 'package:flutter/material.dart';

import '../classes/bottomnavigationbar.dart';
import '../classes/drawer.dart';
import 'main_page.dart';

class Data extends StatefulWidget {
  const Data({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Data> createState() => _Data();
}

class _Data extends State<Data> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Data")),
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
      bottomNavigationBar: const MyBottomBar(),
      drawer: const MyDrawer(),
    );
  }
}
