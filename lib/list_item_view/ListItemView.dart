import 'package:fluent_design/fluent_design.dart';
import 'package:flutter/material.dart';

class ListItemView extends StatefulWidget {
  @override
  _ListItemViewState createState() => _ListItemViewState();
}

class _ListItemViewState extends State<ListItemView> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){},
      leading: Icon(FluentIcons.color),
      title: Text(
        "Title",
        style: Theme.of(context).textTheme.title.copyWith(color: Colors.black),
      ),
      subtitle: Text(
        "Detail Text",
        style: Theme.of(context).textTheme.subtitle.copyWith(color: Colors.black),
      ),
      trailing: Icon(FluentIcons.finger_print),
    );
  }
}
