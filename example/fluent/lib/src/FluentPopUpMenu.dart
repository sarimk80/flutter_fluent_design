import 'package:flutter/material.dart';
import 'package:fluent_design/fluent_design.dart';

class FluentPopUpMenu extends StatefulWidget {
  @override
  _FluentPopUpMenuState createState() => _FluentPopUpMenuState();
}

class _FluentPopUpMenuState extends State<FluentPopUpMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBarLayout(
        title: 'PopUpMenu',
        fluentBody: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            direction: Axis.vertical,
            alignment: WrapAlignment.spaceBetween,
            children: <Widget>[
              PopupMenuButton(
                color: Colors.white,
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Text('Share'),
                  ),
                  PopupMenuItem(
                    child: Text('Delete'),
                  ),
                  PopupMenuItem(
                    child: Text('Print'),
                  ),
                ],
              ),
              PopupMenuButton(
                color: Colors.white,
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Text('Share'),
                  ),
                  PopupMenuItem(
                    child: Text('Delete'),
                  ),
                  PopupMenuItem(
                    child: Text('Print'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
