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
                  'XXLarge',
                  style: Theme.of(context).textTheme.display2,
                ),
              ),
              AvatarView(
                child: Center(
                  child: Text(
                    'FL',
                    style: Theme.of(context)
                        .textTheme
                        .display1
                        .copyWith(color: Colors.white),
                  ),
                ),
                backgroundColor: Colors.purple,
                radius: 40,
              ),
              AvatarView(
                radius: 40,
                networkImage: NetworkImage('https://picsum.photos/250?image=9'),
              )
            ],
          ),
          Divider(
            thickness: 5,
            color: Colors.black,
          ),
          Wrap(
            direction: Axis.horizontal,
            spacing: 40,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'XLarge',
                  style: Theme.of(context).textTheme.display2,
                ),
              ),
              AvatarView(
                child: Center(
                  child: Text(
                    'Fl',
                    style: Theme.of(context)
                        .textTheme
                        .display2
                        .copyWith(color: Colors.white),
                  ),
                ),
                backgroundColor: Colors.greenAccent,
                radius: 30,
              ),
              AvatarView(
                radius: 30,
                networkImage: NetworkImage('https://picsum.photos/250?image=9'),
              )
            ],
          ),
          Divider(
            thickness: 5,
            color: Colors.black,
          ),
          Wrap(
            direction: Axis.horizontal,
            spacing: 40,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Large',
                  style: Theme.of(context).textTheme.display2,
                ),
              ),
              AvatarView(
                child: Center(
                  child: Text(
                    'FL',
                    style: Theme.of(context).textTheme.title,
                  ),
                ),
                backgroundColor: Colors.cyan,
                radius: 25,
              ),
              AvatarView(
                radius: 25,
                networkImage: NetworkImage('https://picsum.photos/250?image=9'),
              )
            ],
          ),
          Divider(
            thickness: 5,
            color: Colors.black,
          ),
          Wrap(
            direction: Axis.horizontal,
            spacing: 40,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Medium',
                  style: Theme.of(context).textTheme.display2,
                ),
              ),
              AvatarView(
                child: Center(
                  child: Text(
                    'FL',
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                ),
                backgroundColor: Colors.purple,
                radius: 20,
              ),
              AvatarView(
                radius: 20,
                networkImage: NetworkImage('https://picsum.photos/250?image=9'),
              )
            ],
          ),
          Divider(
            thickness: 5,
            color: Colors.black,
          ),
          Wrap(
            direction: Axis.horizontal,
            spacing: 40,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Small',
                  style: Theme.of(context).textTheme.display2,
                ),
              ),
              AvatarView(
                child: Center(
                  child: Text(
                    'FL',
                    style: Theme.of(context)
                        .textTheme
                        .body1
                        .copyWith(color: Colors.white),
                  ),
                ),
                backgroundColor: Colors.blueAccent,
                radius: 15,
              ),
              AvatarView(
                radius: 15,
                networkImage: NetworkImage('https://picsum.photos/250?image=9'),
              )
            ],
          ),
          Divider(
            thickness: 5,
            color: Colors.black,
          ),
          Wrap(
            direction: Axis.horizontal,
            spacing: 40,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'XSmall',
                  style: Theme.of(context).textTheme.display2,
                ),
              ),
              AvatarView(
                child: Center(
                  child: Text(
                    'FL',
                    style: Theme.of(context)
                        .textTheme
                        .caption
                        .copyWith(color: Colors.white),
                  ),
                ),
                backgroundColor: Colors.orange,
                radius: 10,
              ),
              AvatarView(
                radius: 10,
                networkImage: NetworkImage('https://picsum.photos/250?image=9'),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
