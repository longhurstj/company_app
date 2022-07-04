import 'package:flutter/material.dart';

import '../classes/drawer.dart';
import 'main_page.dart';

class News extends StatefulWidget {
  const News({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<News> createState() => _News();
}

class _News extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("News")),
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
