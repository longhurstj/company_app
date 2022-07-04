import 'package:flutter/material.dart';

import '../classes/bottomnavigationbar.dart';
import '../classes/drawer.dart';
import 'main_page.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyProfile> createState() => _MyProfile();
}

class _MyProfile extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Profile")),
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
