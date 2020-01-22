import 'package:flutter/material.dart';
import 'package:fluent_design/fluent_design.dart';

class FlutterBottomNavigation extends StatefulWidget {
  @override
  _FlutterBottomNavigationState createState() =>
      _FlutterBottomNavigationState();
}

class _FlutterBottomNavigationState extends State<FlutterBottomNavigation> {
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    print(_currentTabIndex);
    return Scaffold(
      body: AppBarLayout(
        title: 'Bottom Navigation Bar',
        fluentBody: Center(
          child: Text(
            'Bottom Navigation Bar',
            style: Theme.of(context).textTheme.display3,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(
        onTap: (int index) {
          setState(() {
            _currentTabIndex = index;
          });
        },
        currentIndex: _currentTabIndex,
        items: [
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(FluentIcons.home_solid),
          ),
          BottomNavigationBarItem(
            title: Text('User'),
            icon: Icon(FluentIcons.other_user),
          ),
          BottomNavigationBarItem(
            title: Text('Setting'),
            icon: Icon(FluentIcons.settings),
          ),
          BottomNavigationBarItem(
            title: Text('Share'),
            icon: Icon(FluentIcons.share),
          ),
          BottomNavigationBarItem(
            title: Text('Videos'),
            icon: Icon(FluentIcons.video),
          ),
        ],
      ),
    );
  }
}
