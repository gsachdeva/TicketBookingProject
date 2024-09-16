import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_project/screens/home_screen.dart';

import '../utils/app_styles.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex=0;
  static final List<Widget> widgets=<Widget>[
    HomeScreen(),
    const Text("Search"),
    const Text("Tickets"),
    const Text("Profile"),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
      print("Tapped Index is $_selectedIndex");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: widgets[_selectedIndex]
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          elevation: 10,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: const [
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
        activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
        label: "Home"),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
        activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
        label: "Search"),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
        activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
        label: "Ticket"),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
        activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
        label: "Profile")
      ]),
    );
  }
}
