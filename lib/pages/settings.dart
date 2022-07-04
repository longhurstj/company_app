// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../classes/bottomnavigationbar.dart';
import '../classes/drawer.dart';
import 'main_page.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Settings> createState() => _Settings();
}

class _Settings extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings")),
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
