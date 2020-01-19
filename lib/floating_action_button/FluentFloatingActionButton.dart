import 'package:fluent_design/icon_data/Fonts.dart';
import 'package:flutter/material.dart';

/*
  Example


      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FluentFloatingActionButton(),
      bottomNavigationBar: FluentBottomAppFab()



*/

class FluentFloatingActionButton extends StatelessWidget {
  final IconData icon;

  const FluentFloatingActionButton({Key key, @required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 4,
      onPressed: () {},
      child: Icon(
       icon,
        color: Theme.of(context).accentColor,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        side: BorderSide(color: Theme.of(context).accentColor, width: 2),
      ),
    );
  }
}
