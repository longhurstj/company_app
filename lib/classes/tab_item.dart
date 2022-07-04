import 'package:flutter/material.dart';

enum TabItem { devices, data, home, profile, settings }

const Map<TabItem, String> tabName = {
  TabItem.devices: 'Devices',
  TabItem.data: 'Data',
  TabItem.home: 'Home',
  TabItem.profile: 'Profile',
  TabItem.settings: 'Settings',
};

const Map<TabItem, MaterialColor> activeTabColor = {
  TabItem.devices: Colors.red,
  TabItem.data: Colors.green,
  TabItem.home: Colors.blue,
  TabItem.profile: Colors.yellow,
  TabItem.settings: Colors.grey,
};

const Map<TabItem, Widget> tabIcon = {
  TabItem.devices: Icon(Icons.devices),
  TabItem.data: Icon(Icons.sd_storage),
  TabItem.home: Icon(Icons.home),
  TabItem.profile: Icon(Icons.person),
  TabItem.settings: Icon(Icons.settings),
};
