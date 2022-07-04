import 'package:flutter/material.dart';

import '../classes/bottom_navigation.dart';
import '../classes/bottomnavigationbar.dart';
import '../classes/drawer.dart';
import '../classes/tab_item.dart';

class Devices extends StatefulWidget {
  const Devices({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Devices> createState() => _Devices();
}

class _Devices extends State<Devices> {
  var _currentTab = TabItem.devices;
  final _navigatorKeys = {
    TabItem.devices: GlobalKey<NavigatorState>(),
    TabItem.data: GlobalKey<NavigatorState>(),
    TabItem.home: GlobalKey<NavigatorState>(),
    TabItem.profile: GlobalKey<NavigatorState>(),
    TabItem.settings: GlobalKey<NavigatorState>(),
  };

  void _selectTab(TabItem tabItem) {
    if (tabItem == _currentTab) {
      // pop to first route
      _navigatorKeys[tabItem]!.currentState!.popUntil((route) => route.isFirst);
    } else {
      setState(() => _currentTab = tabItem);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await _navigatorKeys[_currentTab]!.currentState!.maybePop();
        if (isFirstRouteInCurrentTab) {
          // if not on the 'main' tab
          if (_currentTab != TabItem.home) {
            // select 'main' tab
            _selectTab(TabItem.home);
            // back button handled by app
            return false;
          }
        }
        // let system handle back button if we're on the first route
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        appBar: AppBar(title: const Text("My Devices")),
        body: ListView(children: [
          Center(
              child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blueGrey[800],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.devices, size: 60.0, color: Colors.white),
                    ],
                  ),
                )
              ])
            ],
          )),
          Card(
            child: ListTile(
              leading:
                  Image.asset('images/Advance-Pro-2-1024x985.jpg', width: 50.0),
              title: const Text('Autoclave'),
              subtitle: const Text('Advance Pro'),
              trailing: const Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset('images/Standard-Classic-.png', width: 50.0),
              title: const Text('Autoclave'),
              subtitle: const Text('Classic'),
              trailing: const Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading:
                  Image.asset('images/AquaPro.pdf-2-867x1024.jpg', width: 50.0),
              title: const Text('Water Purifier'),
              subtitle: const Text('Aqua Pro +'),
              trailing: const Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset('images/T-Edge.png', width: 50.0),
              title: const Text('Autoclave'),
              subtitle: const Text('T-Edge'),
              trailing: const Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading:
                  Image.asset('images/Advance-Pro-2-1024x985.jpg', width: 50.0),
              title: const Text('Autoclave'),
              subtitle: const Text('Advance Pro'),
              trailing: const Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset('images/Steelco - Ultraclean 3 0.2.jpg',
                  width: 50.0),
              title: const Text('Washer'),
              subtitle: const Text('Ultraclean'),
              trailing: const Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading:
                  Image.asset('images/Advance-Pro-2-1024x985.jpg', width: 50.0),
              title: const Text('Autoclave'),
              subtitle: const Text('Advance Pro'),
              trailing: const Icon(Icons.more_vert),
            ),
          ),
        ]),
        bottomNavigationBar: BottomNavigation(
          currentTab: _currentTab,
          onSelectTab: _selectTab,
        ),
        drawer: const MyDrawer(),
      ),
    );
  }
}
