import 'package:flutter/material.dart';
import 'package:webapplication/Cart.dart';
import 'package:webapplication/home.dart';
import 'package:webapplication/notifications.dart';
import 'package:webapplication/profile.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  _BottomNavigationExampleState createState() =>
      _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State {
  int _selectedTab = 0;

  List _pages = [
    Center(
      child: HomePage(),
    ),
    Center(
      child: Cart(),
    ),
    Center(
      child: Notify(),
    ),
    Center(
      child: Profile(),
    )
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_selectedTab],
        bottomNavigationBar: Theme(
          data: ThemeData(
            canvasColor: Colors.white,
          ),
          child: BottomNavigationBar(
            currentIndex: _selectedTab,
            onTap: (index) => _changeTab(index),
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.black,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), label: "Cart"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications), label: "notifications"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "person"),
            ],
          ),
        ));
  }
}
