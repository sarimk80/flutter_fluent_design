import 'package:flutter/material.dart';
import 'package:fluent_design/fluent_design.dart';

class FluentListItemView extends StatefulWidget {
  @override
  _FluentListItemViewState createState() => _FluentListItemViewState();
}

class _FluentListItemViewState extends State<FluentListItemView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBarLayout(
        title: 'List Item View',
        fluentBody: ListView(
          padding: EdgeInsets.all(0),
          shrinkWrap: true,
          children: <Widget>[
            ListTile(
              title: Text(
                'Single Line text',
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(color: Theme.of(context).accentColor),
              ),
              trailing: Icon(FluentIcons.read),
            ),
            ListTile(
              leading: Icon(FluentIcons.folder_open),
              title: Text('Title Primary Text'),
            ),
            ListTile(
              leading: Icon(FluentIcons.folder_open),
              title: Text('Title Primary Text'),
              trailing: Text(
                'action',
                style: Theme.of(context).textTheme.subtitle,
              ),
            ),
            ListTile(
              leading: AvatarView(
                backgroundColor: Colors.grey[300],
                child: Center(
                  child: Text('SA'),
                ),
              ),
              title: Text('Title Primary Text'),
              trailing: Text('action'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Divider(
                height: 1,
                thickness: 0.5,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            ListTile(
              title: Text(
                'Two Line Text',
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(color: Theme.of(context).accentColor),
              ),
            ),
            ListTile(
              leading: Icon(FluentIcons.folder_open),
              title: Text('Title Primary Text'),
              subtitle: Text(
                'SubTitle Secondary text',
                style: Theme.of(context).textTheme.subtitle,
              ),
            ),
            ListTile(
              leading: Icon(FluentIcons.folder_open),
              title: Text('Title Primary Text'),
              trailing: Text(
                'action',
                style: Theme.of(context).textTheme.subtitle,
              ),
              subtitle: Text(
                'SubTitle Secondary text',
                style: Theme.of(context).textTheme.subtitle,
              ),
            ),
            ListTile(
              leading: AvatarView(
                backgroundColor: Colors.grey[300],
                child: Center(
                  child: Text('SA'),
                ),
              ),
              title: Text('Title Primary Text'),
              trailing: Icon(FluentIcons.share),
              subtitle: Text(
                'SubTitle Secondary text',
                style: Theme.of(context).textTheme.subtitle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Divider(
                height: 1,
                thickness: 0.5,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            ListTile(
              title: Text(
                'Three Line Text',
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(color: Theme.of(context).accentColor),
              ),
            ),
            ListTile(
              leading: Icon(FluentIcons.folder_open),
              title: Text(
                'Title Primary Text',
                style: Theme.of(context).textTheme.display2,
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'SubTitle Secondary text',
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                  Text(
                    'SubTitle Secondary text',
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(FluentIcons.folder_open),
              title: Text(
                'Title Primary Text',
                style: Theme.of(context).textTheme.display2,
              ),
              trailing: Text(
                'action',
                style: Theme.of(context).textTheme.subtitle,
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'SubTitle Secondary text',
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                  Text(
                    'SubTitle Secondary text',
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            ),
            ListTile(
              leading: AvatarView(
                backgroundColor: Colors.grey[300],
                child: Center(
                  child: Text('SA'),
                ),
              ),
              title: Text(
                'Title Primary Text',
                style: Theme.of(context).textTheme.display2,
              ),
              trailing: Icon(FluentIcons.share),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'SubTitle Secondary text',
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                  Text(
                    'SubTitle Secondary text',
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Divider(
                height: 1,
                thickness: 0.5,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            ListTile(
              title: Text(
                'Tile with Large custom View',
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(color: Theme.of(context).accentColor),
              ),
            ),
            ListTile(
              leading: AvatarView(
                radius: 35,
                child: Center(
                  child: Text('SA'),
                ),
                backgroundColor: Colors.grey[500],
              ),
              title: Text(
                'Title Primary Text',
                style: Theme.of(context).textTheme.display1,
              ),
              subtitle: Text(
                'SubTitle Secondary text',
                style: Theme.of(context).textTheme.subtitle,
              ),
            ),
            ListTile(
              leading: AvatarView(
                radius: 35,
                child: Center(
                  child: Text('SA'),
                ),
                backgroundColor: Colors.orange[500],
              ),
              title: Text(
                'Title Primary Text',
                style: Theme.of(context).textTheme.display1,
              ),
              subtitle: Text(
                'SubTitle Secondary text',
                style: Theme.of(context).textTheme.subtitle,
              ),
            ),
            ListTile(
              leading: AvatarView(
                radius: 35,
                child: Center(
                  child: Text('SA'),
                ),
                backgroundColor: Colors.red[500],
              ),
              title: Text(
                'Title Primary Text',
                style: Theme.of(context).textTheme.display1,
              ),
              subtitle: Text(
                'SubTitle Secondary text',
                style: Theme.of(context).textTheme.subtitle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Divider(
                height: 1,
                thickness: 0.5,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            ListTile(
              title: Text(
                'List Item with truncated text',
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(color: Theme.of(context).accentColor),
              ),
            ),
            ListTile(
              leading: Icon(FluentIcons.folder_open),
              title: Text('Title Primary Text'),
              trailing: Text(
                'action',
                style: Theme.of(context).textTheme.subtitle,
              ),
              subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget quam nec mi tristique venenatis. Pellentesque ultricies a turpis quis ornare. Sed id dictum erat, at vehicula ante',
                style: Theme.of(context).textTheme.subtitle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            ListTile(
              leading: AvatarView(
                backgroundColor: Colors.grey[300],
                child: Center(
                  child: Text('SA'),
                ),
              ),
              title: Text(
                'Title Primary Text',
                style: Theme.of(context).textTheme.display2,
              ),
              trailing: Icon(FluentIcons.share),
              subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget quam nec mi tristique venenatis. Pellentesque ultricies a turpis quis ornare. Sed id dictum erat, at vehicula ante',
                maxLines: 2,
                style: Theme.of(context).textTheme.subtitle,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Divider(
                height: 1,
                thickness: 0.5,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            ListTile(
              title: Text(
                'List Item with wrap text',
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(color: Theme.of(context).accentColor),
              ),
            ),
            ListTile(
              leading: Icon(FluentIcons.folder_open),
              title: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget quam nec mi tristique venenatis. Pellentesque ultricies a turpis quis ornare. Sed id dictum erat',
                style: Theme.of(context).textTheme.title,
              ),
              trailing: Text(
                'action',
                style: Theme.of(context).textTheme.subtitle,
              ),
              subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget quam nec mi tristique venenatis. Pellentesque ultricies a turpis quis ornare. Sed id dictum erat, at vehicula ante',
                style: Theme.of(context).textTheme.subtitle,
              ),
            ),
            ListTile(
              leading: AvatarView(
                backgroundColor: Colors.grey[300],
                child: Center(
                  child: Text('SA'),
                ),
              ),
              title: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget quam nec mi tristique venenatis. Pellentesque ultricies a turpis quis ornare. Sed id dictum erat',
                style: Theme.of(context).textTheme.display2,
              ),
              trailing: Icon(FluentIcons.share),
              subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget quam nec mi tristique venenatis. Pellentesque ultricies a turpis quis ornare. Sed id dictum erat, at vehicula ante',
                style: Theme.of(context).textTheme.subtitle,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5),
            )
          ],
        ),
      ),
    );
  }
}
