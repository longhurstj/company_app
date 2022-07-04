import 'package:flutter/material.dart';
import 'package:tuttnauer_app/pages/assistance.dart';
import 'package:tuttnauer_app/pages/community.dart';
import 'package:tuttnauer_app/pages/data.dart';
import 'package:tuttnauer_app/pages/devices.dart';
import 'package:tuttnauer_app/pages/services.dart';
import 'package:tuttnauer_app/pages/social_media.dart';

import '../classes/bottom_navigation.dart';
import '../classes/bottomnavigationbar.dart';
import '../classes/drawer.dart';
import '../classes/tab_item.dart';
import '../classes/tab_navigator.dart';
import 'water_monitoring.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key, required String title}) : super(key: key);
  final appTitle = 'Prestige Medical Ltd';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tuttnauer App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _currentTab = TabItem.home;
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
        appBar: AppBar(
          title: Image.asset('images/PrestigeMedicalLogo-WHITE.png',
              width: 200, height: 50),
        ),
        body: Stack(
          children: <Widget>[
            _buildOffstageNavigator(TabItem.devices),
            _buildOffstageNavigator(TabItem.data),
            _buildOffstageNavigator(TabItem.home),
            _buildOffstageNavigator(TabItem.profile),
            _buildOffstageNavigator(TabItem.settings),
          ],
        ),
        bottomNavigationBar: BottomNavigation(
          currentTab: _currentTab,
          onSelectTab: _selectTab,
        ),
        drawer: const MyDrawer(),
      ),
    );
  }

  Widget _buildOffstageNavigator(TabItem tabItem) {
    return Offstage(
      offstage: _currentTab != tabItem,
      child: TabNavigator(
        navigatorKey: _navigatorKeys[tabItem],
        tabItem: tabItem,
      ),
    );
  }
}
