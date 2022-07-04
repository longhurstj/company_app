import 'package:flutter/material.dart';

import '../classes/drawer.dart';
import 'main_page.dart';

class SocialMedia extends StatefulWidget {
  const SocialMedia({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<SocialMedia> createState() => _SocialMedia();
}

class _SocialMedia extends State<SocialMedia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Social Media")),
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
