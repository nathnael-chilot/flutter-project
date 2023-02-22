import 'package:flutter/material.dart';
import 'package:instagramui/account.dart';
import 'package:instagramui/pages/home.dart';
import 'package:instagramui/pages/reels.dart';
import 'package:instagramui/pages/search.dart';
import 'package:instagramui/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    UserHome(),
    const UserSearch(),
    UserReels(),
    const UserShop(),
    const UserAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: navigateBottomNavBar,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_call), label: 'Reels'),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundImage: AssetImage("assets/rophnan2.jpeg"),
                ),
                label: 'Account'),
          ]),
    );
  }
}
