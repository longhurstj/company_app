import 'package:flutter/material.dart';
import 'package:tuttnauer_app/pages/About.dart';
import 'package:tuttnauer_app/pages/Legislation.dart';
import 'package:tuttnauer_app/pages/Logout.dart';
import 'package:tuttnauer_app/pages/main_page.dart';
import 'package:tuttnauer_app/pages/news.dart';
import 'package:tuttnauer_app/pages/products_services.dart';
import 'package:tuttnauer_app/pages/sectors.dart';
import 'package:tuttnauer_app/pages/settings.dart';

import '../pages/my_profile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
            ),
            child: Image.asset('images/PrestigeMedicalLogo-WHITE.png',
                width: 50, height: 25),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MainPage(
                          title: '',
                        )),
              );
            },
          ),
          ListTile(
            title: const Text('About'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => About(
                          title: '',
                        )),
              );
            },
          ),
          ListTile(
            title: const Text('Products & Services'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ProductsServices(
                          title: '',
                        )),
              );
            },
          ),
          ListTile(
            title: const Text('Sectors'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Sectors(
                          title: '',
                        )),
              );
            },
          ),
          ListTile(
            title: const Text('Legislation'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Legislation(
                          title: '',
                        )),
              );
            },
          ),
          ListTile(
            title: const Text('News'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const News(
                          title: '',
                        )),
              );
            },
          ),
          ListTile(
            title: const Text('Contact & Support'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyProfile(
                          title: '',
                        )),
              );
            },
          ),
          ListTile(
            title: const Text('Settings'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Settings(
                          title: '',
                        )),
              );
            },
          ),
          ListTile(
            title: const Text('Logout'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Logout(
                          title: '',
                        )),
              );
            },
          ),
        ],
      ),
    );
  }
}
