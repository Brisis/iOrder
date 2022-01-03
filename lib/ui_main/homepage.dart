import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iorder/constants/constants.dart' as constants;
import 'package:iorder/ui_main/ui_pages/explore.dart';
import 'package:iorder/ui_main/ui_pages/home.dart';
import 'package:iorder/ui_main/ui_pages/locations.dart';
import 'package:iorder/ui_main/ui_pages/profile.dart';
import 'package:iorder/widgets/post.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = <Widget>[const HomePage(), const LocationPage(), const ExplorePage(), const ProfilePage()];
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedIconTheme: const IconThemeData(color: constants.mainColor),
        selectedItemColor: constants.mainColor,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home, size: 25), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.location, size: 25), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.compass, size: 25), label: 'Ben'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person, size: 25), label: 'Coder'),
        ],
      ),
    );
  }
}
