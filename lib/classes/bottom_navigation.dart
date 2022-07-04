import 'package:flutter/material.dart';
import 'package:tuttnauer_app/classes/tab_item.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({required this.currentTab, required this.onSelectTab});
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.white, width: 3.0))),
      child: BottomNavigationBar(
        backgroundColor: Colors.blueGrey,
        unselectedItemColor: Colors.blueGrey[200],
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          _buildItem(TabItem.devices),
          _buildItem(TabItem.data),
          _buildItem(TabItem.home),
          _buildItem(TabItem.profile),
          _buildItem(TabItem.settings),
        ],
        onTap: (index) => onSelectTab(
          TabItem.values[index],
        ),
        currentIndex: currentTab.index,
        selectedItemColor: activeTabColor[currentTab]!,
      ),
    );
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem) {
    return BottomNavigationBarItem(
      icon: Icon(
        Icons.layers,
        color: _colorTabMatching(tabItem),
      ),
      label: tabName[tabItem],
    );
  }

  Color _colorTabMatching(TabItem item) {
    return currentTab == item ? activeTabColor[item]! : Colors.grey;
  }
}
