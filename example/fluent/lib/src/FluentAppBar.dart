import 'package:flutter/material.dart';
import 'package:fluent_design/fluent_design.dart';

class FluentAppBar extends StatefulWidget {
  @override
  _FluentAppBarState createState() => _FluentAppBarState();
}

class _FluentAppBarState extends State<FluentAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBarLayout(
          title: 'AppBarLayout',
          searchBar: true,
          snap: false,
          pinned: true,
          action: <Widget>[
            Padding(
              padding: EdgeInsets.all(5),
            ),
            Icon(
              FluentIcons.flag,
              size: Theme.of(context).iconTheme.size,
            ),
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Icon(FluentIcons.favicon, size: Theme.of(context).iconTheme.size),
            Padding(
              padding: EdgeInsets.all(8),
            ),
          ],
          fluentBody: ListView.builder(
            padding: EdgeInsets.all(0),
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text('$index'),
                title: Text(
                  'item $index',
                  style: Theme.of(context).textTheme.subhead,
                ),
              );
            },
          )),
    );
  }
}
