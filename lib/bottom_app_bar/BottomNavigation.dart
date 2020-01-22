import 'package:flutter/material.dart';

///[Example]

/*
    BottomNavigation(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.home),
            title: Text('Home'),
          ),
           BottomNavigationBarItem(
            icon: Icon(FluentIcons.guest_user),
            title: Text('User'),
          ),
           BottomNavigationBarItem(
            icon: Icon(FluentIcons.settings),
            title: Text('Setting'),
          ),
        ],
      ),
*/

class BottomNavigation extends StatefulWidget {
  final List<BottomNavigationBarItem> items;
  final int currentIndex;
  final ValueChanged<int> onTap;

  const BottomNavigation(
      {Key key, @required this.items, @required this.currentIndex, this.onTap})
      : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 0.3,
            color: Colors.black.withOpacity(0.3),
          ),
        ),
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: widget.currentIndex,
        onTap: widget.onTap,
        elevation: Theme.of(context).bottomAppBarTheme.elevation,
        iconSize: 22,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedLabelStyle:
            Theme.of(context).textTheme.subtitle.copyWith(fontSize: 12),
        unselectedLabelStyle:
            Theme.of(context).textTheme.subtitle.copyWith(fontSize: 12),
        unselectedItemColor: Theme.of(context).disabledColor,
        selectedItemColor: Theme.of(context).accentColor,
        backgroundColor: Theme.of(context).bottomAppBarTheme.color,
        items: widget.items,
      ),
    );
  }
}
