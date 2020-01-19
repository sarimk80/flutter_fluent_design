import 'package:fluent_design/bottom_app_bar_fab/BottomAppBarFabItems.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
  Example


      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FluentFloatingActionButton(),
      bottomNavigationBar: FluentBottomAppFab()


*/

class FluentBottomAppFab extends StatefulWidget {
  final List<BottomAppBarFabItems> items;

  const FluentBottomAppFab({Key key, @required this.items}) : super(key: key);

  @override
  _FluentBottomAppFabState createState() => _FluentBottomAppFabState();
}

class _FluentBottomAppFabState extends State<FluentBottomAppFab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppBar().preferredSize.height,
      child: BottomAppBar(
        notchMargin: 0,
        elevation: 8,
        child: Container(
          height: AppBar().preferredSize.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: widget.items,
            ),
          ),
        ),
        color: Theme.of(context).bottomAppBarTheme.color,
      ),
    );
  }
}
