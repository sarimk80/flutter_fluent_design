import 'package:flutter/material.dart';
import 'package:fluent_design/fluent_design.dart';

class FlutterAvatarView extends StatefulWidget {
  @override
  _FlutterAvatarViewState createState() => _FlutterAvatarViewState();
}

class _FlutterAvatarViewState extends State<FlutterAvatarView> {
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
          Divider(
            thickness: 1,
            color: Colors.black.withOpacity(0.5),
          ),
          Wrap(
            direction: Axis.horizontal,
            spacing: 40,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'xxl',
                  style: Theme.of(context).textTheme.display2,
                ),
              ),
              AvatarView(
                backgroundColor: Colors.purple,
                radius: 40,
              ),
              AvatarView(
                radius: 40,
                networkImage: NetworkImage('https://picsum.photos/250?image=9'),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
