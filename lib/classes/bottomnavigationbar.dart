import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tuttnauer_app/pages/devices.dart';
import 'package:tuttnauer_app/pages/main_page.dart';
import 'package:tuttnauer_app/pages/my_profile.dart';
import 'package:tuttnauer_app/pages/settings.dart';

import '../pages/data.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({Key? key}) : super(key: key);
  @override
  State<MyBottomBar> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyBottomBar> {
  int _selectedIndex = 2;

  // ignore: unused_field

  void _onItemTapped(int index) {
    if (kDebugMode) {
      print(index);
    }
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _pages = <Widget>[
    Devices(
      title: '',
    ),
    Data(
      title: '',
    ),
    MainPage(
      title: '',
    ),
    MyProfile(
      title: '',
    ),
    Settings(
      title: '',
    ),
  ];

  //Scaffold(body: Center(child: _pages.elementAt(_selectedIndex)),bottomNavigationBar:

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(top: BorderSide(color: Colors.white, width: 3.0))),
        child: BottomNavigationBar(
          backgroundColor: Colors.blueGrey,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.blueGrey[200],
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.devices),
              label: 'Devices',
              backgroundColor: Colors.blueGrey,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sd_storage),
              label: 'Data',
              backgroundColor: Colors.blueGrey,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blueGrey,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.blueGrey,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Colors.blueGrey,
            ),
          ],
        ));
  }
}
