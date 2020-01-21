import 'package:flutter/material.dart';
import 'package:fluent_design/fluent_design.dart';

class AvatarView extends StatefulWidget {
  @override
  _AvatarViewState createState() => _AvatarViewState();
}

class _AvatarViewState extends State<AvatarView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AppBarLayout(
      title: 'Avatar View',
      fluentBody: Wrap(
        direction: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Circular Style',
              style: Theme.of(context).textTheme.display1,
            ),
          ),
        ],
      ),
    ));
  }
}
