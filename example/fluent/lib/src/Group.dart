import 'package:flutter/material.dart';

class Group extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text('Hello'),
          TextField(
            decoration: InputDecoration(hintText: 'Enter value'),
          ),
        ],
      ),
    );
  }
}
